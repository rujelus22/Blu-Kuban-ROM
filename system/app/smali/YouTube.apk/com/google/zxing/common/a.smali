.class public final Lcom/google/zxing/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/common/a;->b:I

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/a;->a:[I

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/zxing/common/a;->b:I

    .line 39
    add-int/lit8 v0, p1, 0x1f

    shr-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/a;->a:[I

    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/zxing/common/a;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    .line 254
    iget v2, p0, Lcom/google/zxing/common/a;->b:I

    .line 255
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_22

    .line 256
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 257
    shr-int/lit8 v3, v0, 0x5

    aget v4, v1, v3

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v1, v3

    .line 255
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 260
    :cond_22
    iput-object v1, p0, Lcom/google/zxing/common/a;->a:[I

    .line 261
    return-void
.end method

.method public final a(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 63
    iget-object v1, p0, Lcom/google/zxing/common/a;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a(IIZ)Z
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    if-ge p2, p1, :cond_c

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 150
    :cond_c
    if-ne p2, p1, :cond_10

    move v0, v1

    .line 175
    :goto_f
    return v0

    .line 153
    :cond_10
    add-int/lit8 v8, p2, -0x1

    .line 154
    shr-int/lit8 v7, p1, 0x5

    .line 155
    shr-int/lit8 v9, v8, 0x5

    move v6, v7

    .line 156
    :goto_17
    if-gt v6, v9, :cond_42

    .line 157
    if-le v6, v7, :cond_2d

    move v0, v2

    .line 158
    :goto_1c
    if-ge v6, v9, :cond_30

    move v4, v5

    .line 160
    :goto_1f
    if-nez v0, :cond_34

    if-ne v4, v5, :cond_34

    .line 161
    const/4 v0, -0x1

    .line 171
    :cond_24
    iget-object v3, p0, Lcom/google/zxing/common/a;->a:[I

    aget v3, v3, v6

    and-int/2addr v0, v3

    if-eqz v0, :cond_3e

    move v0, v2

    .line 172
    goto :goto_f

    .line 157
    :cond_2d
    and-int/lit8 v0, p1, 0x1f

    goto :goto_1c

    .line 158
    :cond_30
    and-int/lit8 v3, v8, 0x1f

    move v4, v3

    goto :goto_1f

    :cond_34
    move v3, v0

    move v0, v2

    .line 164
    :goto_36
    if-gt v3, v4, :cond_24

    .line 165
    shl-int v10, v1, v3

    or-int/2addr v0, v10

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 156
    :cond_3e
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_17

    :cond_42
    move v0, v1

    .line 175
    goto :goto_f
.end method

.method public final b(I)V
    .registers 7
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/zxing/common/a;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 73
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 268
    new-instance v2, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/zxing/common/a;->b:I

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 269
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Lcom/google/zxing/common/a;->b:I

    if-ge v0, v1, :cond_26

    .line 270
    and-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_15

    .line 271
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 273
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x58

    :goto_1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 273
    :cond_23
    const/16 v1, 0x2e

    goto :goto_1d

    .line 275
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
