.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
.super Ljava/security/Signature;
.source "OpenSSLSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;
    }
.end annotation


# static fields
.field private static jdkToOpenSsl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:I

.field private dsa:I

.field private final evpAlgorithm:Ljava/lang/String;

.field private rsa:I

.field private final singleByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    .line 51
    const-string v0, "MD5WithRSAEncryption"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-string v0, "MD5WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-string v0, "MD5/RSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-string v0, "1.2.840.113549.1.1.4"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-string v0, "1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$MD5RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v0, "SHA1WithRSAEncryption"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const-string v0, "SHA1WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-string v0, "SHA1/RSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-string v0, "SHA-1/RSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-string v0, "1.2.840.113549.1.1.5"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-string v0, "1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-string v0, "1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-string v0, "1.3.14.3.2.29"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-string v0, "SHA256WithRSAEncryption"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    const-string v0, "SHA256WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-string v0, "1.2.840.113549.1.1.11"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA256RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    const-string v0, "SHA384WithRSAEncryption"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-string v0, "SHA384WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    const-string v0, "1.2.840.113549.1.1.12"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA384RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 74
    const-string v0, "SHA512WithRSAEncryption"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 75
    const-string v0, "SHA512WithRSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    const-string v0, "1.2.840.113549.1.1.13"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA512RSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 78
    const-string v0, "SHA1withDSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 79
    const-string v0, "SHA/DSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 80
    const-string v0, "DSA"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 81
    const-string v0, "1.3.14.3.2.26with1.2.840.10040.4.1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 82
    const-string v0, "1.3.14.3.2.26with1.2.840.10040.4.3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 83
    const-string v0, "DSAWithSHA1"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 84
    const-string v0, "1.2.840.10040.4.3"

    const-class v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$SHA1DSA;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->register(Ljava/lang/String;Ljava/lang/Class;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    .line 146
    const-string v0, "RSA-MD2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 147
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_16
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    .registers 4
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;>;"
    if-nez v0, :cond_c

    .line 126
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;
    :try_end_12
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_12} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_12} :catch_1a

    return-object v2

    .line 130
    :catch_13
    move-exception v1

    .line 131
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 132
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1a
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v2, p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "algorithm"

    .prologue
    .line 45
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private static register(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 4
    .parameter "algorithm"
    .parameter "implementation"

    .prologue
    .line 42
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->jdkToOpenSsl:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 13
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 183
    instance-of v6, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_43

    .line 185
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 186
    .local v2, dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 187
    .local v1, dsaParams:Ljava/security/interfaces/DSAParams;
    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3c

    .line 208
    .end local v1           #dsaParams:Ljava/security/interfaces/DSAParams;
    .end local v2           #dsaPublicKey:Ljava/security/interfaces/DSAPublicKey;
    :goto_33
    :try_start_33
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->evpAlgorithm:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyInit(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_74

    .line 212
    return-void

    .line 191
    :catch_3c
    move-exception v3

    .line 192
    .local v3, e:Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 194
    .end local v3           #e:Ljava/lang/Exception;
    :cond_43
    instance-of v6, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v6, :cond_6c

    .line 196
    :try_start_47
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v5, v0

    .line 197
    .local v5, rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-interface {v5}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B)I

    move-result v6

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_64} :catch_65

    goto :goto_33

    .line 200
    .end local v5           #rsaPublicKey:Ljava/security/interfaces/RSAPublicKey;
    :catch_65
    move-exception v3

    .line 201
    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/security/InvalidKeyException;

    invoke-direct {v6, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 204
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6c
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "Need DSA or RSA public key"

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 209
    :catch_74
    move-exception v4

    .line 210
    .local v4, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 216
    return-void
.end method

.method protected engineSign()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 156
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->engineUpdate([BII)V

    .line 157
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 6
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 161
    iget v0, p0, Ljava/security/Signature;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 164
    :cond_b
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyUpdate(I[BII)V

    .line 166
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 10
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v5, :cond_12

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    .line 227
    .local v1, handle:I
    :goto_8
    if-nez v1, :cond_15

    .line 229
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "Need DSA or RSA public key"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v1           #handle:I
    :cond_12
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    goto :goto_8

    .line 233
    .restart local v1       #handle:I
    :cond_15
    :try_start_15
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    const/4 v6, 0x0

    array-length v7, p1

    invoke-static {v5, p1, v6, v7, v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_VerifyFinal(I[BIII)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_22

    move-result v2

    .line 234
    .local v2, result:I
    if-ne v2, v3, :cond_20

    :goto_1f
    return v3

    :cond_20
    move v3, v4

    goto :goto_1f

    .line 235
    .end local v2           #result:I
    :catch_22
    move-exception v0

    .line 236
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    if-eqz v0, :cond_9

    .line 244
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->dsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 247
    :cond_9
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    if-eqz v0, :cond_12

    .line 248
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->rsa:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_PKEY_free(I)V

    .line 251
    :cond_12
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    if-eqz v0, :cond_1b

    .line 252
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSignature;->ctx:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->EVP_MD_CTX_destroy(I)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1f

    .line 255
    :cond_1b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 257
    return-void

    .line 255
    :catchall_1f
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
