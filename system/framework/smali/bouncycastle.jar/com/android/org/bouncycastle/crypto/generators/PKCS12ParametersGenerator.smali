.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 5
    .parameter "digest"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 40
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_18

    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 43
    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    .end local p1
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    .line 49
    return-void

    .line 47
    .restart local p1
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private adjust([BI[B)V
    .registers 8
    .parameter "a"
    .parameter "aOff"
    .parameter "b"

    .prologue
    .line 61
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, p3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 63
    .local v1, x:I
    array-length v2, p3

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 64
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    array-length v2, p3

    add-int/lit8 v0, v2, -0x2

    .local v0, i:I
    :goto_1e
    if-ltz v0, :cond_36

    .line 68
    aget-byte v2, p3, v0

    and-int/lit16 v2, v2, 0xff

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 69
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 70
    ushr-int/lit8 v1, v1, 0x8

    .line 66
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 72
    :cond_36
    return-void
.end method

.method private generateDerivedKey(II)[B
    .registers 19
    .parameter "idByte"
    .parameter "n"

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v11, [B

    .line 82
    .local v3, D:[B
    move/from16 v0, p2

    new-array v8, v0, [B

    .line 84
    .local v8, dKey:[B
    const/4 v9, 0x0

    .local v9, i:I
    :goto_b
    array-length v11, v3

    if-eq v9, v11, :cond_16

    .line 86
    move/from16 v0, p1

    int-to-byte v11, v0

    aput-byte v11, v3, v9

    .line 84
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 91
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    if-eqz v11, :cond_51

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v11, v11

    if-eqz v11, :cond_51

    .line 93
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v6, v11, [B

    .line 95
    .local v6, S:[B
    const/4 v9, 0x0

    :goto_3c
    array-length v11, v6

    if-eq v9, v11, :cond_54

    .line 97
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v6, v9

    .line 95
    add-int/lit8 v9, v9, 0x1

    goto :goto_3c

    .line 102
    .end local v6           #S:[B
    :cond_51
    const/4 v11, 0x0

    new-array v6, v11, [B

    .line 107
    .restart local v6       #S:[B
    :cond_54
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz v11, :cond_8f

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v11, v11

    if-eqz v11, :cond_8f

    .line 109
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v12, v13

    mul-int/2addr v11, v12

    new-array v5, v11, [B

    .line 111
    .local v5, P:[B
    const/4 v9, 0x0

    :goto_7a
    array-length v11, v5

    if-eq v9, v11, :cond_92

    .line 113
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v12

    rem-int v12, v9, v12

    aget-byte v11, v11, v12

    aput-byte v11, v5, v9

    .line 111
    add-int/lit8 v9, v9, 0x1

    goto :goto_7a

    .line 118
    .end local v5           #P:[B
    :cond_8f
    const/4 v11, 0x0

    new-array v5, v11, [B

    .line 121
    .restart local v5       #P:[B
    :cond_92
    array-length v11, v6

    array-length v12, v5

    add-int/2addr v11, v12

    new-array v4, v11, [B

    .line 123
    .local v4, I:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v6

    invoke-static {v6, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v11, 0x0

    array-length v12, v6

    array-length v13, v5

    invoke-static {v5, v11, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v2, v11, [B

    .line 127
    .local v2, B:[B
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v11, v11, p2

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    div-int v7, v11, v12

    .line 129
    .local v7, c:I
    const/4 v9, 0x1

    :goto_b8
    if-gt v9, v7, :cond_13f

    .line 131
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    new-array v1, v11, [B

    .line 133
    .local v1, A:[B
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v3

    invoke-interface {v11, v3, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v4

    invoke-interface {v11, v4, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    const/4 v10, 0x1

    .local v10, j:I
    :goto_db
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-eq v10, v11, :cond_f5

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    array-length v13, v1

    invoke-interface {v11, v1, v12, v13}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    const/4 v12, 0x0

    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 136
    add-int/lit8 v10, v10, 0x1

    goto :goto_db

    .line 142
    :cond_f5
    const/4 v10, 0x0

    :goto_f6
    array-length v11, v2

    if-eq v10, v11, :cond_103

    .line 144
    array-length v11, v1

    rem-int v11, v10, v11

    aget-byte v11, v1, v11

    aput-byte v11, v2, v10

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_f6

    .line 147
    :cond_103
    const/4 v10, 0x0

    :goto_104
    array-length v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int/2addr v11, v12

    if-eq v10, v11, :cond_119

    .line 149
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    mul-int/2addr v11, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11, v2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_104

    .line 152
    :cond_119
    if-ne v9, v7, :cond_132

    .line 154
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v8

    add-int/lit8 v14, v9, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :goto_12f
    add-int/lit8 v9, v9, 0x1

    goto :goto_b8

    .line 158
    :cond_132
    const/4 v11, 0x0

    add-int/lit8 v12, v9, -0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v12, v13

    array-length v13, v1

    invoke-static {v1, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12f

    .line 162
    .end local v1           #A:[B
    .end local v10           #j:I
    :cond_13f
    return-object v8
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 215
    div-int/lit8 p1, p1, 0x8

    .line 217
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 219
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .parameter "keySize"

    .prologue
    .line 175
    div-int/lit8 p1, p1, 0x8

    .line 177
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 179
    .local v0, dKey:[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 8
    .parameter "keySize"
    .parameter "ivSize"

    .prologue
    const/4 v4, 0x0

    .line 195
    div-int/lit8 p1, p1, 0x8

    .line 196
    div-int/lit8 p2, p2, 0x8

    .line 198
    const/4 v2, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    .line 200
    .local v0, dKey:[B
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v1

    .line 202
    .local v1, iv:[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v2
.end method
