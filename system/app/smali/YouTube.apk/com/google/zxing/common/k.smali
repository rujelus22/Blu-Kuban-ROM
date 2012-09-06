.class public Lcom/google/zxing/common/k;
.super Lcom/google/zxing/b;
.source "SourceFile"


# instance fields
.field private a:[B

.field private final b:[I


# direct methods
.method public constructor <init>(Lcom/google/zxing/e;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/zxing/b;-><init>(Lcom/google/zxing/e;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/common/k;->a:[B

    .line 41
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/common/k;->b:[I

    .line 45
    return-void
.end method

.method private static a([I)I
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 135
    array-length v7, p0

    move v2, v4

    move v0, v4

    move v1, v4

    move v3, v4

    .line 139
    :goto_6
    if-ge v2, v7, :cond_18

    .line 140
    aget v5, p0, v2

    if-le v5, v0, :cond_f

    .line 142
    aget v0, p0, v2

    move v1, v2

    .line 144
    :cond_f
    aget v5, p0, v2

    if-le v5, v3, :cond_15

    .line 145
    aget v3, p0, v2

    .line 139
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    move v2, v4

    move v0, v4

    move v5, v4

    .line 152
    :goto_1b
    if-ge v2, v7, :cond_2a

    .line 153
    sub-int v4, v2, v1

    .line 155
    aget v6, p0, v2

    mul-int/2addr v6, v4

    mul-int/2addr v4, v6

    .line 156
    if-le v4, v5, :cond_5c

    move v0, v2

    .line 152
    :goto_26
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_1b

    .line 163
    :cond_2a
    if-le v1, v0, :cond_59

    move v5, v1

    move v6, v0

    .line 171
    :goto_2e
    sub-int v0, v5, v6

    shr-int/lit8 v1, v7, 0x4

    if-gt v0, v1, :cond_39

    .line 172
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 176
    :cond_39
    add-int/lit8 v4, v5, -0x1

    .line 177
    const/4 v1, -0x1

    .line 178
    add-int/lit8 v2, v5, -0x1

    :goto_3e
    if-le v2, v6, :cond_53

    .line 179
    sub-int v0, v2, v6

    .line 180
    mul-int/2addr v0, v0

    sub-int v7, v5, v2

    mul-int/2addr v0, v7

    aget v7, p0, v2

    sub-int v7, v3, v7

    mul-int/2addr v0, v7

    .line 181
    if-le v0, v1, :cond_56

    move v1, v2

    .line 178
    :goto_4e
    add-int/lit8 v2, v2, -0x1

    move v4, v1

    move v1, v0

    goto :goto_3e

    .line 187
    :cond_53
    shl-int/lit8 v0, v4, 0x3

    return v0

    :cond_56
    move v0, v1

    move v1, v4

    goto :goto_4e

    :cond_59
    move v5, v0

    move v6, v1

    goto :goto_2e

    :cond_5c
    move v4, v5

    goto :goto_26
.end method

.method private a(I)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/google/zxing/common/k;->a:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/zxing/common/k;->a:[B

    array-length v0, v0

    if-ge v0, p1, :cond_e

    .line 126
    :cond_a
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/zxing/common/k;->a:[B

    :cond_e
    move v0, v1

    .line 128
    :goto_f
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1a

    .line 129
    iget-object v2, p0, Lcom/google/zxing/common/k;->b:[I

    aput v1, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 131
    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;)Lcom/google/zxing/common/a;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/common/k;->a()Lcom/google/zxing/e;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/google/zxing/e;->b()I

    move-result v4

    .line 51
    if-eqz p2, :cond_10

    iget v1, p2, Lcom/google/zxing/common/a;->b:I

    if-ge v1, v4, :cond_32

    .line 52
    :cond_10
    new-instance p2, Lcom/google/zxing/common/a;

    invoke-direct {p2, v4}, Lcom/google/zxing/common/a;-><init>(I)V

    .line 57
    :cond_15
    invoke-direct {p0, v4}, Lcom/google/zxing/common/k;->a(I)V

    .line 58
    iget-object v1, p0, Lcom/google/zxing/common/k;->a:[B

    invoke-virtual {v3, p1, v1}, Lcom/google/zxing/e;->a(I[B)[B

    move-result-object v5

    .line 59
    iget-object v3, p0, Lcom/google/zxing/common/k;->b:[I

    move v1, v2

    .line 60
    :goto_21
    if-ge v1, v4, :cond_3f

    .line 61
    aget-byte v6, v5, v1

    and-int/lit16 v6, v6, 0xff

    .line 62
    shr-int/lit8 v6, v6, 0x3

    aget v7, v3, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v3, v6

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 54
    :cond_32
    iget-object v1, p2, Lcom/google/zxing/common/a;->a:[I

    array-length v5, v1

    move v1, v2

    :goto_36
    if-ge v1, v5, :cond_15

    iget-object v6, p2, Lcom/google/zxing/common/a;->a:[I

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 64
    :cond_3f
    invoke-static {v3}, Lcom/google/zxing/common/k;->a([I)I

    move-result v6

    .line 66
    aget-byte v1, v5, v2

    and-int/lit16 v1, v1, 0xff

    .line 67
    aget-byte v2, v5, v0

    and-int/lit16 v2, v2, 0xff

    .line 68
    :goto_4b
    add-int/lit8 v3, v4, -0x1

    if-ge v0, v3, :cond_66

    .line 69
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    .line 71
    shl-int/lit8 v7, v2, 0x2

    sub-int v1, v7, v1

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1

    .line 72
    if-ge v1, v6, :cond_61

    .line 73
    invoke-virtual {p2, v0}, Lcom/google/zxing/common/a;->b(I)V

    .line 68
    :cond_61
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v3

    goto :goto_4b

    .line 78
    :cond_66
    return-object p2
.end method

.method public b()Lcom/google/zxing/common/b;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Lcom/google/zxing/common/k;->a()Lcom/google/zxing/e;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/google/zxing/e;->b()I

    move-result v4

    .line 85
    invoke-virtual {v3}, Lcom/google/zxing/e;->c()I

    move-result v5

    .line 86
    new-instance v6, Lcom/google/zxing/common/b;

    invoke-direct {v6, v4, v5}, Lcom/google/zxing/common/b;-><init>(II)V

    .line 90
    invoke-direct {p0, v4}, Lcom/google/zxing/common/k;->a(I)V

    .line 91
    iget-object v7, p0, Lcom/google/zxing/common/k;->b:[I

    .line 92
    const/4 v0, 0x1

    move v2, v0

    :goto_19
    const/4 v0, 0x5

    if-ge v2, v0, :cond_41

    .line 93
    mul-int v0, v5, v2

    div-int/lit8 v0, v0, 0x5

    .line 94
    iget-object v8, p0, Lcom/google/zxing/common/k;->a:[B

    invoke-virtual {v3, v0, v8}, Lcom/google/zxing/e;->a(I[B)[B

    move-result-object v8

    .line 95
    shl-int/lit8 v0, v4, 0x2

    div-int/lit8 v9, v0, 0x5

    .line 96
    div-int/lit8 v0, v4, 0x5

    :goto_2c
    if-ge v0, v9, :cond_3d

    .line 97
    aget-byte v10, v8, v0

    and-int/lit16 v10, v10, 0xff

    .line 98
    shr-int/lit8 v10, v10, 0x3

    aget v11, v7, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v7, v10

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 92
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 101
    :cond_41
    invoke-static {v7}, Lcom/google/zxing/common/k;->a([I)I

    move-result v7

    .line 106
    invoke-virtual {v3}, Lcom/google/zxing/e;->a()[B

    move-result-object v3

    move v2, v1

    .line 107
    :goto_4a
    if-ge v2, v5, :cond_63

    .line 108
    mul-int v8, v2, v4

    move v0, v1

    .line 109
    :goto_4f
    if-ge v0, v4, :cond_5f

    .line 110
    add-int v9, v8, v0

    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    .line 111
    if-ge v9, v7, :cond_5c

    .line 112
    invoke-virtual {v6, v0, v2}, Lcom/google/zxing/common/b;->b(II)V

    .line 109
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 107
    :cond_5f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4a

    .line 117
    :cond_63
    return-object v6
.end method
