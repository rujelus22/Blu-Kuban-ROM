.class public Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;
.super Ljava/security/SignatureSpi;
.source "JDKDigestSignature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$MD5WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA512WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA384WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA256WithRSAEncryption;,
        Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 6
    .parameter "objId"
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 71
    iput-object p3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 72
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p1, v1}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 60
    iput-object p2, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 62
    return-void
.end method

.method private derEncode([B)[B
    .registers 4
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v1, :cond_5

    .line 262
    .end local p1
    :goto_4
    return-object p1

    .line 260
    .restart local p1
    :cond_5
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 262
    .local v0, dInfo:Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_4
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "o"

    .prologue
    .line 109
    if-nez p1, :cond_4

    .line 111
    const/4 v0, 0x0

    .line 114
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "param"

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 6
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 94
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_27

    .line 96
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPrivateKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_27
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 101
    .local v0, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 103
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 104
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 79
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_27

    .line 81
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPublicKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_27
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lcom/android/org/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 86
    .local v0, param:Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 87
    iget-object v1, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 88
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 223
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 136
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 138
    .local v2, hash:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 142
    :try_start_e
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B

    move-result-object v0

    .line 144
    .local v0, bytes:[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_19} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_24

    move-result-object v3

    return-object v3

    .line 146
    .end local v0           #bytes:[B
    :catch_1b
    move-exception v1

    .line 148
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "key too small for signature type"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_24
    move-exception v1

    .line 152
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    .line 122
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 131
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 14
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 160
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    .line 162
    .local v3, hash:[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 169
    :try_start_f
    iget-object v9, p0, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 171
    .local v5, sig:[B
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_2a

    move-result-object v1

    .line 178
    .local v1, expected:[B
    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_2f

    .line 180
    const/4 v4, 0x0

    .local v4, i:I
    :goto_20
    array-length v9, v5

    if-ge v4, v9, :cond_6b

    .line 182
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_2c

    .line 217
    .end local v1           #expected:[B
    .end local v4           #i:I
    .end local v5           #sig:[B
    :cond_29
    :goto_29
    return v7

    .line 173
    :catch_2a
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    goto :goto_29

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #expected:[B
    .restart local v4       #i:I
    .restart local v5       #sig:[B
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 188
    .end local v4           #i:I
    :cond_2f
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_29

    .line 190
    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    .line 191
    .local v6, sigOffset:I
    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    .line 193
    .local v2, expectedOffset:I
    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 194
    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 196
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4f
    array-length v9, v3

    if-ge v4, v9, :cond_5f

    .line 198
    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_29

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 204
    :cond_5f
    const/4 v4, 0x0

    :goto_60
    if-ge v4, v6, :cond_6b

    .line 206
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_29

    .line 204
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    .end local v2           #expectedOffset:I
    .end local v6           #sigOffset:I
    :cond_6b
    move v7, v8

    .line 217
    goto :goto_29
.end method
