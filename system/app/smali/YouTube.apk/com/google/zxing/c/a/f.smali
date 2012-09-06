.class public final Lcom/google/zxing/c/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 104
    sub-int v0, p0, p1

    if-le v0, p1, :cond_13

    .line 106
    sub-int v0, p0, p1

    :goto_7
    move v2, v1

    .line 113
    :goto_8
    if-le p0, v0, :cond_20

    .line 114
    mul-int/2addr v2, p0

    .line 115
    if-gt v1, p1, :cond_10

    .line 116
    div-int/2addr v2, v1

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 113
    :cond_10
    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    .line 108
    :cond_13
    sub-int v0, p0, p1

    move v3, v0

    move v0, p1

    move p1, v3

    .line 109
    goto :goto_7

    .line 120
    :goto_19
    if-gt v1, p1, :cond_1f

    .line 121
    div-int/2addr v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 124
    :cond_1f
    return v0

    :cond_20
    move v0, v2

    goto :goto_19
.end method

.method public static a([IIZ)I
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 65
    array-length v10, p0

    move v2, v7

    move v0, v7

    .line 67
    :goto_5
    if-ge v2, v10, :cond_f

    .line 68
    aget v3, p0, v2

    add-int/2addr v3, v0

    .line 67
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_5

    :cond_f
    move v8, v7

    move v2, v7

    move v9, v0

    move v0, v7

    .line 72
    :goto_13
    add-int/lit8 v3, v10, -0x1

    if-ge v8, v3, :cond_8b

    .line 74
    shl-int v3, v1, v8

    or-int/2addr v0, v3

    move v3, v2

    move v2, v0

    move v0, v1

    .line 75
    :goto_1d
    aget v4, p0, v8

    if-ge v0, v4, :cond_82

    .line 77
    sub-int v4, v9, v0

    add-int/lit8 v4, v4, -0x1

    sub-int v5, v10, v8

    add-int/lit8 v5, v5, -0x2

    invoke-static {v4, v5}, Lcom/google/zxing/c/a/f;->a(II)I

    move-result v4

    .line 78
    if-eqz p2, :cond_4c

    if-nez v2, :cond_4c

    sub-int v5, v9, v0

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v5, v6

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_4c

    .line 80
    sub-int v5, v9, v0

    sub-int v6, v10, v8

    sub-int/2addr v5, v6

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x2

    invoke-static {v5, v6}, Lcom/google/zxing/c/a/f;->a(II)I

    move-result v5

    sub-int/2addr v4, v5

    .line 83
    :cond_4c
    sub-int v5, v10, v8

    add-int/lit8 v5, v5, -0x1

    if-le v5, v1, :cond_7b

    .line 85
    sub-int v5, v9, v0

    sub-int v6, v10, v8

    add-int/lit8 v6, v6, -0x2

    sub-int/2addr v5, v6

    move v6, v7

    .line 86
    :goto_5a
    if-le v5, p1, :cond_6d

    .line 87
    sub-int v11, v9, v0

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x1

    sub-int v12, v10, v8

    add-int/lit8 v12, v12, -0x3

    invoke-static {v11, v12}, Lcom/google/zxing/c/a/f;->a(II)I

    move-result v11

    add-int/2addr v6, v11

    .line 86
    add-int/lit8 v5, v5, -0x1

    goto :goto_5a

    .line 90
    :cond_6d
    add-int/lit8 v5, v10, -0x1

    sub-int/2addr v5, v8

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    .line 94
    :cond_72
    :goto_72
    add-int/2addr v3, v4

    .line 76
    add-int/lit8 v0, v0, 0x1

    shl-int v4, v1, v8

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v2, v4

    goto :goto_1d

    .line 91
    :cond_7b
    sub-int v5, v9, v0

    if-le v5, p1, :cond_72

    .line 92
    add-int/lit8 v4, v4, -0x1

    goto :goto_72

    .line 96
    :cond_82
    sub-int v4, v9, v0

    .line 72
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v4

    move v0, v2

    move v2, v3

    goto :goto_13

    .line 98
    :cond_8b
    return v2
.end method
