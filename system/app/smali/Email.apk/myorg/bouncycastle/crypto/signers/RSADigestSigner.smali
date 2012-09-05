.class public Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;
.source "RSADigestSigner.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lmyorg/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    .line 37
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "RIPEMD256"

    sget-object v2, Lmyorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    sget-object v2, Lmyorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD2"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD4"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    const-string v1, "MD5"

    sget-object v2, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method private derEncode([B)[B
    .registers 4
    .parameter "hash"

    .prologue
    .line 188
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lmyorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 190
    .local v0, dInfo:Lmyorg/bouncycastle/asn1/x509/DigestInfo;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/x509/DigestInfo;->getDEREncoded()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forSigning"
    .parameter "parameters"

    .prologue
    .line 73
    iput-boolean p1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    .line 76
    instance-of v1, p2, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_1f

    move-object v1, p2

    .line 77
    check-cast v1, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 82
    .local v0, k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_f
    if-eqz p1, :cond_23

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_23

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1f
    move-object v0, p2

    .line 79
    check-cast v0, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0       #k:Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_f

    .line 86
    :cond_23
    if-nez p1, :cond_33

    invoke-virtual {v0}, Lmyorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_33
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    .line 92
    iget-object v1, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V

    .line 93
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 185
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "input"

    .prologue
    .line 99
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 100
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "input"
    .parameter "inOff"
    .parameter "length"

    .prologue
    .line 106
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 107
    return-void
.end method

.method public verifySignature([B)Z
    .registers 14
    .parameter "signature"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 131
    iget-boolean v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v9, :cond_e

    .line 132
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "RSADigestSigner not initialised for verification"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 135
    :cond_e
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v3, v9, [B

    .line 136
    .local v3, hash:[B
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v9, v3, v7}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 142
    :try_start_1b
    iget-object v9, p0, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v10, 0x0

    array-length v11, p1

    invoke-interface {v9, p1, v10, v11}, Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 143
    .local v5, sig:[B
    invoke-direct {p0, v3}, Lmyorg/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_36

    move-result-object v1

    .line 148
    .local v1, expected:[B
    array-length v9, v5

    array-length v10, v1

    if-ne v9, v10, :cond_3b

    .line 149
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2c
    array-length v9, v5

    if-ge v4, v9, :cond_77

    .line 150
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-eq v9, v10, :cond_38

    .line 180
    .end local v1           #expected:[B
    .end local v4           #i:I
    .end local v5           #sig:[B
    :cond_35
    :goto_35
    return v7

    .line 144
    :catch_36
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    goto :goto_35

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #expected:[B
    .restart local v4       #i:I
    .restart local v5       #sig:[B
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 154
    .end local v4           #i:I
    :cond_3b
    array-length v9, v5

    array-length v10, v1

    add-int/lit8 v10, v10, -0x2

    if-ne v9, v10, :cond_35

    .line 156
    array-length v9, v5

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v6, v9, -0x2

    .line 157
    .local v6, sigOffset:I
    array-length v9, v1

    array-length v10, v3

    sub-int/2addr v9, v10

    add-int/lit8 v2, v9, -0x2

    .line 159
    .local v2, expectedOffset:I
    aget-byte v9, v1, v8

    add-int/lit8 v9, v9, -0x2

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 160
    const/4 v9, 0x3

    aget-byte v10, v1, v9

    add-int/lit8 v10, v10, -0x2

    int-to-byte v10, v10

    aput-byte v10, v1, v9

    .line 162
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_5b
    array-length v9, v3

    if-ge v4, v9, :cond_6b

    .line 163
    add-int v9, v6, v4

    aget-byte v9, v5, v9

    add-int v10, v2, v4

    aget-byte v10, v1, v10

    if-ne v9, v10, :cond_35

    .line 162
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 170
    :cond_6b
    const/4 v4, 0x0

    :goto_6c
    if-ge v4, v6, :cond_77

    .line 171
    aget-byte v9, v5, v4

    aget-byte v10, v1, v4

    if-ne v9, v10, :cond_35

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .end local v2           #expectedOffset:I
    .end local v6           #sigOffset:I
    :cond_77
    move v7, v8

    .line 180
    goto :goto_35
.end method
