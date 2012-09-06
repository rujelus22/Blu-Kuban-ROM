.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# static fields
.field public static bits:[Z

.field public static size:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    if-ge p1, v0, :cond_e

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_e
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    if-eqz v0, :cond_16

    sget v0, Lcom/google/zxing/common/BitArray;->size:I

    if-eq v0, p1, :cond_1c

    .line 39
    :cond_16
    sput p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 40
    new-array v0, p1, [Z

    sput-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    .line 42
    :cond_1c
    return-void
.end method

.method public static native nativeReverse([Z)V
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 91
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 98
    return-void
.end method

.method public final flip(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 71
    sget-object v1, Lcom/google/zxing/common/BitArray;->bits:[Z

    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    aput-boolean v0, v1, p1

    .line 72
    return-void

    .line 71
    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final get(I)Z
    .registers 3
    .parameter "i"

    .prologue
    .line 53
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public final getSize()I
    .registers 2

    .prologue
    .line 45
    sget v0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public final isRange(IIZ)Z
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 110
    if-ge p2, p1, :cond_9

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 113
    :cond_9
    if-ne p2, p1, :cond_c

    .line 123
    :cond_b
    :goto_b
    return v1

    .line 117
    :cond_c
    move v0, p1

    .local v0, i:I
    :goto_d
    if-ge v0, p2, :cond_b

    .line 118
    sget-object v2, Lcom/google/zxing/common/BitArray;->bits:[Z

    aget-boolean v2, v2, v0

    if-eq v2, p3, :cond_17

    .line 119
    const/4 v1, 0x0

    goto :goto_b

    .line 117
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public final reverse()V
    .registers 2

    .prologue
    .line 140
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    invoke-static {v0}, Lcom/google/zxing/common/BitArray;->nativeReverse([Z)V

    .line 149
    return-void
.end method

.method public final set(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 62
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    sget v2, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 165
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    sget v2, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v0, v2, :cond_26

    .line 166
    and-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_15

    .line 167
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 169
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x58

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 169
    :cond_23
    const/16 v2, 0x2e

    goto :goto_1d

    .line 171
    :cond_26
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
