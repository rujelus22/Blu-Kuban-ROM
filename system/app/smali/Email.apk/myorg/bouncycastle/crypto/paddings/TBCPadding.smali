.class public Lmyorg/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;
.source "TBCPadding.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 8
    .parameter "in"
    .parameter "inOff"

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 45
    array-length v4, p1

    sub-int v1, v4, p2

    .line 48
    .local v1, count:I
    if-lez p2, :cond_1b

    .line 49
    add-int/lit8 v4, p2, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_19

    :goto_10
    int-to-byte v0, v2

    .line 54
    .local v0, code:B
    :goto_11
    array-length v2, p1

    if-ge p2, v2, :cond_28

    .line 55
    aput-byte v0, p1, p2

    .line 56
    add-int/lit8 p2, p2, 0x1

    goto :goto_11

    .end local v0           #code:B
    :cond_19
    move v2, v3

    .line 49
    goto :goto_10

    .line 51
    :cond_1b
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_26

    :goto_24
    int-to-byte v0, v2

    .restart local v0       #code:B
    goto :goto_11

    .end local v0           #code:B
    :cond_26
    move v2, v3

    goto :goto_24

    .line 59
    .restart local v0       #code:B
    :cond_28
    return v1
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method

.method public padCount([B)I
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 66
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, p1, v2

    .line 68
    .local v0, code:B
    array-length v2, p1

    add-int/lit8 v1, v2, -0x1

    .line 69
    .local v1, index:I
    :goto_8
    if-lez v1, :cond_13

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v0, :cond_13

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 73
    :cond_13
    array-length v2, p1

    sub-int/2addr v2, v1

    return v2
.end method
