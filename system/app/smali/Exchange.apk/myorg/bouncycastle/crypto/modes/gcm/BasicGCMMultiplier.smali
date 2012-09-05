.class public Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;
.super Ljava/lang/Object;
.source "BasicGCMMultiplier.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 3
    .parameter "H"

    .prologue
    .line 10
    invoke-static {p1}, Lmyorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    .line 11
    return-void
.end method

.method public multiplyH([B)V
    .registers 11
    .parameter "x"

    .prologue
    const/4 v5, 0x1

    const/16 v8, 0x10

    const/4 v6, 0x0

    .line 14
    new-array v4, v8, [B

    .line 16
    .local v4, z:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v8, :cond_35

    .line 17
    iget-object v7, p0, Lmyorg/bouncycastle/crypto/modes/gcm/BasicGCMMultiplier;->H:[B

    aget-byte v0, v7, v1

    .line 18
    .local v0, h:B
    const/4 v2, 0x7

    .local v2, j:I
    :goto_e
    if-ltz v2, :cond_32

    .line 19
    shl-int v7, v5, v2

    and-int/2addr v7, v0

    if-eqz v7, :cond_18

    .line 20
    invoke-static {v4, p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([B[B)V

    .line 23
    :cond_18
    const/16 v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_30

    move v3, v5

    .line 24
    .local v3, lsb:Z
    :goto_21
    invoke-static {p1}, Lmyorg/bouncycastle/crypto/modes/gcm/GCMUtil;->shiftRight([B)V

    .line 25
    if-eqz v3, :cond_2d

    .line 28
    aget-byte v7, p1, v6

    xor-int/lit8 v7, v7, -0x1f

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 18
    :cond_2d
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .end local v3           #lsb:Z
    :cond_30
    move v3, v6

    .line 23
    goto :goto_21

    .line 16
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 33
    .end local v0           #h:B
    .end local v2           #j:I
    :cond_35
    invoke-static {v4, v6, p1, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void
.end method
