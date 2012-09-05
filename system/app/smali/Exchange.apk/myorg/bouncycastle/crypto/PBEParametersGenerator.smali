.class public abstract Lmyorg/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .registers 5
    .parameter "password"

    .prologue
    .line 125
    array-length v2, p0

    if-lez v2, :cond_23

    .line 127
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 129
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    array-length v2, p0

    if-eq v1, v2, :cond_26

    .line 130
    mul-int/lit8 v2, v1, 0x2

    aget-char v3, p0, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 131
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 136
    .end local v0           #bytes:[B
    .end local v1           #i:I
    :cond_23
    const/4 v2, 0x0

    new-array v0, v2, [B

    :cond_26
    return-object v0
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .registers 4
    .parameter "password"

    .prologue
    .line 97
    array-length v2, p0

    new-array v0, v2, [B

    .line 99
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_f

    .line 100
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 103
    :cond_f
    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lmyorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lmyorg/bouncycastle/crypto/CipherParameters;
.end method

.method public init([B[BI)V
    .registers 4
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    .line 30
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    .line 31
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 32
    iput p3, p0, Lmyorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    .line 33
    return-void
.end method
