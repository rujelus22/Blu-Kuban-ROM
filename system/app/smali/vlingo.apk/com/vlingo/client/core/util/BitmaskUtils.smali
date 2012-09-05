.class public abstract Lcom/vlingo/client/core/util/BitmaskUtils;
.super Ljava/lang/Object;
.source "BitmaskUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitAtIndex(II)Z
    .registers 4
    .parameter "mask"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 24
    shr-int v1, p0, p1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static queryMask(II)Z
    .registers 3
    .parameter "mask"
    .parameter "query"

    .prologue
    .line 20
    and-int v0, p1, p0

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static removeBitFromMaskAtIndex(II)I
    .registers 8
    .parameter "mask"
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    .line 38
    shl-int v4, v5, p1

    add-int/lit8 v3, v4, -0x1

    .line 39
    .local v3, lowMask:I
    and-int v2, p0, v3

    .line 40
    .local v2, lowBits:I
    shl-int v4, v5, p1

    add-int/2addr v4, v3

    and-int v1, p0, v4

    .line 41
    .local v1, highMask:I
    and-int v0, p0, v1

    .line 42
    .local v0, highBits:I
    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v2

    return v4
.end method

.method public static setBitAtIndex(IIZ)I
    .registers 4
    .parameter "mask"
    .parameter "index"
    .parameter "bit"

    .prologue
    const/4 v0, 0x1

    .line 28
    if-eqz p2, :cond_6

    .line 29
    shl-int/2addr v0, p1

    or-int/2addr p0, v0

    .line 34
    :goto_5
    return p0

    .line 32
    :cond_6
    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    goto :goto_5
.end method
