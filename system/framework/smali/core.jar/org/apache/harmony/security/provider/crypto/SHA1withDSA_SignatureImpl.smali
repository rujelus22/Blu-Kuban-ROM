.class public Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;
.super Ljava/security/Signature;
.source "SHA1withDSA_SignatureImpl.java"


# instance fields
.field private dsaKey:Ljava/security/interfaces/DSAKey;

.field private msgDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 46
    const-string v0, "SHA1withDSA"

    invoke-direct {p0, v0}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    .line 49
    return-void
.end method

.method private checkSignature([BII)Z
    .registers 25
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 331
    add-int/lit8 v19, p2, 0x3

    :try_start_2
    aget-byte v7, p1, v19

    .line 332
    .local v7, n1:I
    add-int v19, p2, v7

    add-int/lit8 v19, v19, 0x5

    aget-byte v8, p1, v19

    .line 334
    .local v8, n2:I
    add-int/lit8 v19, p2, 0x0

    aget-byte v19, p1, v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    add-int/lit8 v19, p2, 0x2

    aget-byte v19, p1, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    add-int v19, p2, v7

    add-int/lit8 v19, v19, 0x4

    aget-byte v19, p1, v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    add-int/lit8 v19, p2, 0x1

    aget-byte v19, p1, v19

    add-int v20, v7, v8

    add-int/lit8 v20, v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_58

    const/16 v19, 0x15

    move/from16 v0, v19

    if-gt v7, v0, :cond_58

    const/16 v19, 0x15

    move/from16 v0, v19

    if-gt v8, v0, :cond_58

    if-eqz p3, :cond_69

    add-int/lit8 v19, p2, 0x1

    aget-byte v19, p1, v19

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, p3

    if-le v0, v1, :cond_69

    .line 339
    :cond_58
    new-instance v19, Ljava/security/SignatureException;

    const-string v20, "signature bytes have invalid encoding"

    invoke-direct/range {v19 .. v20}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_60
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_60} :catch_60

    .line 343
    .end local v7           #n1:I
    .end local v8           #n2:I
    :catch_60
    move-exception v5

    .line 344
    .local v5, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v19, Ljava/security/SignatureException;

    const-string v20, "bad argument: byte[] is too small"

    invoke-direct/range {v19 .. v20}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 342
    .end local v5           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7       #n1:I
    .restart local v8       #n2:I
    :cond_69
    add-int/lit8 v19, v7, 0x5

    add-int v19, v19, v8

    :try_start_6d
    aget-byte v19, p1, v19
    :try_end_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6d .. :try_end_6f} :catch_60

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 349
    .local v4, digest:[B
    new-array v3, v7, [B

    .line 350
    .local v3, bytes:[B
    add-int/lit8 v19, p2, 0x4

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 353
    .local v12, r:Ljava/math/BigInteger;
    new-array v3, v8, [B

    .line 354
    add-int/lit8 v19, p2, 0x6

    add-int v19, v19, v7

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v3, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 357
    .local v13, s:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v10

    .line 358
    .local v10, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    .line 359
    .local v9, p:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v11

    .line 360
    .local v11, q:Ljava/math/BigInteger;
    invoke-interface {v10}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v6

    .line 361
    .local v6, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v19, v0

    check-cast v19, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface/range {v19 .. v19}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v18

    .line 365
    .local v18, y:Ljava/math/BigInteger;
    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f5

    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f5

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f5

    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f8

    .line 367
    :cond_f5
    const/16 v19, 0x0

    .line 380
    :goto_f7
    return v19

    .line 370
    :cond_f8
    invoke-virtual {v13, v11}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 372
    .local v17, w:Ljava/math/BigInteger;
    new-instance v19, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 373
    .local v14, u1:Ljava/math/BigInteger;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 375
    .local v15, u2:Ljava/math/BigInteger;
    invoke-virtual {v6, v14, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 377
    .local v16, v:Ljava/math/BigInteger;
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v19

    if-eqz v19, :cond_146

    .line 378
    const/16 v19, 0x0

    goto :goto_f7

    .line 380
    :cond_146
    const/16 v19, 0x1

    goto :goto_f7
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
    .line 59
    if-nez p1, :cond_8

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 62
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 10
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 84
    if-eqz p1, :cond_7

    instance-of v5, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v5, :cond_d

    .line 85
    :cond_7
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5}, Ljava/security/InvalidKeyException;-><init>()V

    throw v5

    :cond_d
    move-object v5, p1

    .line 88
    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 89
    .local v2, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, p:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, q:Ljava/math/BigInteger;
    move-object v5, p1

    .line 91
    check-cast v5, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v4

    .line 94
    .local v4, x:Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 95
    .local v0, n:I
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v7, :cond_3f

    const/16 v5, 0x200

    if-lt v0, v5, :cond_3f

    const/16 v5, 0x400

    if-gt v0, v5, :cond_3f

    and-int/lit8 v5, v0, 0x3f

    if-eqz v5, :cond_47

    .line 96
    :cond_3f
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad p"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_47
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eq v5, v7, :cond_5d

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_5d

    .line 99
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 101
    :cond_5d
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ne v5, v7, :cond_6a

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_72

    .line 102
    :cond_6a
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "x <= 0 || x >= q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 105
    :cond_72
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 107
    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 108
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 10
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 127
    if-eqz p1, :cond_7

    instance-of v5, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v5, :cond_f

    .line 128
    :cond_7
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "publicKey is not an instance of DSAPublicKey"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    move-object v5, p1

    .line 131
    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 132
    .local v2, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 133
    .local v1, p:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .local v3, q:Ljava/math/BigInteger;
    move-object v5, p1

    .line 134
    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 137
    .local v4, y:Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 138
    .local v0, n1:I
    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ne v5, v7, :cond_41

    const/16 v5, 0x200

    if-lt v0, v5, :cond_41

    const/16 v5, 0x400

    if-gt v0, v5, :cond_41

    and-int/lit8 v5, v0, 0x3f

    if-eqz v5, :cond_49

    .line 139
    :cond_41
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad p"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 141
    :cond_49
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-ne v5, v7, :cond_57

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_5f

    .line 142
    :cond_57
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "bad q"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 144
    :cond_5f
    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v5

    if-eq v5, v7, :cond_6d

    .line 145
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "y <= 0"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 148
    :cond_6d
    check-cast p1, Ljava/security/interfaces/DSAKey;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    .line 150
    iget-object v5, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 151
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_a

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "param == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "invalid parameter for this engine"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v13, 0x0

    .line 186
    .local v13, r:Ljava/math/BigInteger;
    const/16 v16, 0x0

    .line 187
    .local v16, s:Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 205
    .local v6, k:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    if-nez v20, :cond_17

    .line 206
    new-instance v20, Ljava/security/SecureRandom;

    invoke-direct/range {v20 .. v20}, Ljava/security/SecureRandom;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    .line 209
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/security/interfaces/DSAKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v11

    .line 210
    .local v11, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v10

    .line 211
    .local v10, p:Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    .line 212
    .local v12, q:Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v5

    .line 213
    .local v5, g:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->dsaKey:Ljava/security/interfaces/DSAKey;

    move-object/from16 v20, v0

    check-cast v20, Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface/range {v20 .. v20}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v19

    .line 217
    .local v19, x:Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v21

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 219
    .local v4, digestBI:Ljava/math/BigInteger;
    const/16 v20, 0x14

    move/from16 v0, v20

    new-array v15, v0, [B

    .line 223
    .local v15, randomBytes:[B
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 225
    new-instance v6, Ljava/math/BigInteger;

    .end local v6           #k:Ljava/math/BigInteger;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v6, v0, v15}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 226
    .restart local v6       #k:Ljava/math/BigInteger;
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_54

    .line 229
    invoke-virtual {v5, v6, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 230
    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v20

    if-eqz v20, :cond_54

    .line 234
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 237
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v20

    if-eqz v20, :cond_54

    .line 244
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 245
    .local v14, rBytes:[B
    array-length v8, v14

    .line 246
    .local v8, n1:I
    const/16 v20, 0x0

    aget-byte v20, v14, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_bd

    .line 247
    add-int/lit8 v8, v8, 0x1

    .line 249
    :cond_bd
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v17

    .line 250
    .local v17, sBytes:[B
    move-object/from16 v0, v17

    array-length v9, v0

    .line 251
    .local v9, n2:I
    const/16 v20, 0x0

    aget-byte v20, v17, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_d2

    .line 252
    add-int/lit8 v9, v9, 0x1

    .line 255
    :cond_d2
    add-int/lit8 v20, v8, 0x6

    add-int v20, v20, v9

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 256
    .local v18, signature:[B
    const/16 v20, 0x0

    const/16 v21, 0x30

    aput-byte v21, v18, v20

    .line 257
    const/16 v20, 0x1

    add-int/lit8 v21, v8, 0x4

    add-int v21, v21, v9

    move/from16 v0, v21

    int-to-byte v0, v0

    move/from16 v21, v0

    aput-byte v21, v18, v20

    .line 258
    const/16 v20, 0x2

    const/16 v21, 0x2

    aput-byte v21, v18, v20

    .line 259
    const/16 v20, 0x3

    int-to-byte v0, v8

    move/from16 v21, v0

    aput-byte v21, v18, v20

    .line 260
    add-int/lit8 v20, v8, 0x4

    const/16 v21, 0x2

    aput-byte v21, v18, v20

    .line 261
    add-int/lit8 v20, v8, 0x5

    int-to-byte v0, v9

    move/from16 v21, v0

    aput-byte v21, v18, v20

    .line 263
    array-length v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v8, v0, :cond_13d

    .line 264
    const/4 v7, 0x4

    .line 268
    .local v7, n:I
    :goto_111
    const/16 v20, 0x0

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v14, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v9, v0, :cond_13f

    .line 271
    add-int/lit8 v7, v8, 0x6

    .line 275
    :goto_12a
    const/16 v20, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    return-object v18

    .line 266
    .end local v7           #n:I
    :cond_13d
    const/4 v7, 0x5

    .restart local v7       #n:I
    goto :goto_111

    .line 273
    :cond_13f
    add-int/lit8 v7, v8, 0x7

    goto :goto_12a
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
    .line 290
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 291
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
    .line 308
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->msgDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 309
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 4
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 396
    if-nez p1, :cond_b

    .line 397
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sigBytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_b
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method

.method protected engineVerify([BII)Z
    .registers 5
    .parameter "sigBytes"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/crypto/SHA1withDSA_SignatureImpl;->checkSignature([BII)Z

    move-result v0

    return v0
.end method
