.class public Lmyorg/bouncycastle/crypto/macs/OldHMac;
.super Ljava/lang/Object;
.source "OldHMac.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/Mac;


# instance fields
.field private digest:Lmyorg/bouncycastle/crypto/Digest;

.field private digestSize:I

.field private inputPad:[B

.field private outputPad:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .registers 4
    .parameter "digest"

    .prologue
    const/16 v1, 0x40

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    .line 21
    new-array v0, v1, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    .line 27
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    .line 28
    invoke-interface {p1}, Lmyorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    .line 29
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 9
    .parameter "out"
    .parameter "outOff"

    .prologue
    const/4 v5, 0x0

    .line 84
    iget v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    new-array v1, v2, [B

    .line 85
    .local v1, tmp:[B
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 87
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 88
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 90
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, p1, p2}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    .line 92
    .local v0, len:I
    invoke-virtual {p0}, Lmyorg/bouncycastle/crypto/macs/OldHMac;->reset()V

    .line 94
    return v0
.end method

.method public getMacSize()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    return v0
.end method

.method public init(Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 40
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 42
    check-cast p1, Lmyorg/bouncycastle/crypto/params/KeyParameter;

    .end local p1
    invoke-virtual {p1}, Lmyorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    .line 44
    .local v1, key:[B
    array-length v2, v1

    const/16 v3, 0x40

    if-le v2, v3, :cond_2c

    .line 45
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    invoke-interface {v2, v1, v5, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 46
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    invoke-interface {v2, v3, v5}, Lmyorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 47
    iget v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digestSize:I

    .local v0, i:I
    :goto_20
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 48
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v5, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 51
    .end local v0           #i:I
    :cond_2c
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v1

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    array-length v0, v1

    .restart local v0       #i:I
    :goto_33
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_3f

    .line 53
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aput-byte v5, v2, v0

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 57
    :cond_3f
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    .line 58
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/4 v0, 0x0

    :goto_51
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_62

    .line 61
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 64
    :cond_62
    const/4 v0, 0x0

    :goto_63
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 65
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->outputPad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 68
    :cond_74
    iget-object v2, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    iget-object v4, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v4, v4

    invoke-interface {v2, v3, v5, v4}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 69
    return-void
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lmyorg/bouncycastle/crypto/Digest;->reset()V

    .line 109
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->inputPad:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 110
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "in"

    .prologue
    .line 76
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lmyorg/bouncycastle/crypto/Digest;->update(B)V

    .line 77
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/macs/OldHMac;->digest:Lmyorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lmyorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 81
    return-void
.end method
