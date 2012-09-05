.class public Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
.super Ljava/lang/Object;
.source "DigitalSignature.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final md5:Ljava/security/MessageDigest;

.field private md5_hash:[B

.field private final sha:Ljava/security/MessageDigest;

.field private sha_hash:[B

.field private final signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "authType"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    :try_start_3
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    .line 75
    const-string v1, "RSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 76
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    .line 77
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 96
    :goto_26
    return-void

    .line 79
    :cond_27
    const-string v1, "DSA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 81
    const-string v1, "NONEwithDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;
    :try_end_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3d} :catch_3e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3d} :catch_4f

    goto :goto_26

    .line 89
    :catch_3e
    move-exception v0

    .line 91
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 85
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_45
    const/4 v1, 0x0

    :try_start_46
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;
    :try_end_4e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_46 .. :try_end_4e} :catch_3e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_46 .. :try_end_4e} :catch_4f

    goto :goto_26

    .line 92
    :catch_4f
    move-exception v0

    .line 94
    .local v0, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public init(Ljava/security/PrivateKey;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_a

    .line 105
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 113
    :cond_9
    :goto_9
    return-void

    .line 106
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    .line 107
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_9

    .line 109
    :catch_15
    move-exception v0

    .line 110
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x2a

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "init - invalid private key"

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method

.method public init(Ljava/security/cert/Certificate;)V
    .registers 7
    .parameter "cert"

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_a

    .line 122
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 130
    :cond_9
    :goto_9
    return-void

    .line 123
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    .line 124
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_14
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_9

    .line 126
    :catch_15
    move-exception v0

    .line 127
    .local v0, e:Ljava/security/InvalidKeyException;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v2, 0x2a

    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "init - invalid certificate"

    invoke-direct {v3, v4, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1
.end method

.method public setMD5([B)V
    .registers 2
    .parameter "data"

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 151
    return-void
.end method

.method public setSHA([B)V
    .registers 2
    .parameter "data"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 159
    return-void
.end method

.method public sign()[B
    .registers 6

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-nez v1, :cond_19

    .line 168
    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .line 169
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 171
    :cond_19
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v1, :cond_28

    .line 172
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_5b

    .line 173
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 178
    :cond_28
    :goto_28
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-nez v1, :cond_41

    .line 179
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .line 180
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v4, v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->digest([BII)I

    .line 182
    :cond_41
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v1, :cond_50

    .line 183
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_6b

    .line 184
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 189
    :cond_50
    :goto_50
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v1, :cond_7b

    .line 190
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 202
    :goto_5a
    return-object v1

    .line 174
    :cond_5b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_28

    .line 175
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_66
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_66} :catch_77
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_66} :catch_89
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_66} :catch_8d

    goto :goto_28

    .line 195
    :catch_67
    move-exception v0

    .line 196
    .local v0, e:Ljava/security/DigestException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_5a

    .line 185
    .end local v0           #e:Ljava/security/DigestException;
    :cond_6b
    :try_start_6b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_50

    .line 186
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B
    :try_end_76
    .catch Ljava/security/DigestException; {:try_start_6b .. :try_end_76} :catch_67
    .catch Ljava/security/SignatureException; {:try_start_6b .. :try_end_76} :catch_77
    .catch Ljavax/crypto/BadPaddingException; {:try_start_6b .. :try_end_76} :catch_89
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_6b .. :try_end_76} :catch_8d

    goto :goto_50

    .line 197
    :catch_77
    move-exception v0

    .line 198
    .local v0, e:Ljava/security/SignatureException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_5a

    .line 191
    .end local v0           #e:Ljava/security/SignatureException;
    :cond_7b
    :try_start_7b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v1, :cond_86

    .line 192
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v1

    goto :goto_5a

    .line 194
    :cond_86
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_88
    .catch Ljava/security/DigestException; {:try_start_7b .. :try_end_88} :catch_67
    .catch Ljava/security/SignatureException; {:try_start_7b .. :try_end_88} :catch_77
    .catch Ljavax/crypto/BadPaddingException; {:try_start_7b .. :try_end_88} :catch_89
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7b .. :try_end_88} :catch_8d

    goto :goto_5a

    .line 199
    :catch_89
    move-exception v0

    .line 200
    .local v0, e:Ljavax/crypto/BadPaddingException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_5a

    .line 201
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catch_8d
    move-exception v0

    .line 202
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    goto :goto_5a
.end method

.method public update([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    if-eqz v0, :cond_12

    .line 141
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 143
    :cond_12
    return-void
.end method

.method public verifySignature([B)Z
    .registers 9
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    if-eqz v4, :cond_15

    .line 214
    :try_start_5
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    .line 215
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->signature:Ljava/security/Signature;

    invoke-virtual {v4, p1}, Ljava/security/Signature;->verify([B)Z
    :try_end_11
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_11} :catch_13

    move-result v3

    .line 246
    :cond_12
    :goto_12
    return v3

    .line 216
    :catch_13
    move-exception v1

    .line 217
    .local v1, e:Ljava/security/SignatureException;
    goto :goto_12

    .line 221
    .end local v1           #e:Ljava/security/SignatureException;
    :cond_15
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    if-eqz v4, :cond_56

    .line 224
    :try_start_19
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_1e} :catch_48
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_1e} :catch_4a

    move-result-object v0

    .line 232
    .local v0, decrypt:[B
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    if-eqz v4, :cond_4c

    .line 233
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v4, v4

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v2, v4, [B

    .line 234
    .local v2, md5_sha:[B
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    array-length v6, v6

    invoke-static {v4, v3, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    :goto_43
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_12

    .line 225
    .end local v0           #decrypt:[B
    .end local v2           #md5_sha:[B
    :catch_48
    move-exception v1

    .line 226
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_12

    .line 227
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_4a
    move-exception v1

    .line 228
    .local v1, e:Ljavax/crypto/BadPaddingException;
    goto :goto_12

    .line 236
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    .restart local v0       #decrypt:[B
    :cond_4c
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    if-eqz v3, :cond_53

    .line 237
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->md5_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_43

    .line 239
    .end local v2           #md5_sha:[B
    :cond_53
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sha_hash:[B

    .restart local v2       #md5_sha:[B
    goto :goto_43

    .line 243
    .end local v0           #decrypt:[B
    .end local v2           #md5_sha:[B
    :cond_56
    if-eqz p1, :cond_5b

    array-length v4, p1

    if-nez v4, :cond_12

    .line 244
    :cond_5b
    const/4 v3, 0x1

    goto :goto_12
.end method
