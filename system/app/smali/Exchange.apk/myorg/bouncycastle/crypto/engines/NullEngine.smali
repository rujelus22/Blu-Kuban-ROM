.class public Lmyorg/bouncycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;
.source "NullEngine.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/BlockCipher;


# instance fields
.field private initialised:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, "Null"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public init(ZLmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    .line 32
    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 57
    iget-boolean v1, p0, Lmyorg/bouncycastle/crypto/engines/NullEngine;->initialised:Z

    if-nez v1, :cond_d

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null engine not initialised"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_d
    add-int/lit8 v1, p2, 0x1

    array-length v2, p1

    if-le v1, v2, :cond_1a

    .line 61
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_1a
    add-int/lit8 v1, p4, 0x1

    array-length v2, p3

    if-le v1, v2, :cond_27

    .line 65
    new-instance v1, Lmyorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    if-ge v0, v3, :cond_35

    .line 69
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p3, v1

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 72
    :cond_35
    return v3
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 81
    return-void
.end method
