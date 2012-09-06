.class public Lcom/google/android/maps/driveabout/vector/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FFFF)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x0

    const/high16 v3, 0x437f

    const/high16 v4, 0x3f00

    .line 32
    mul-float v0, p0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/u;->a(III)I

    move-result v0

    .line 33
    mul-float v1, p1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1, v5, v6}, Lcom/google/android/maps/driveabout/vector/u;->a(III)I

    move-result v1

    .line 34
    mul-float v2, p2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2, v5, v6}, Lcom/google/android/maps/driveabout/vector/u;->a(III)I

    move-result v2

    .line 35
    mul-float/2addr v3, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5, v6}, Lcom/google/android/maps/driveabout/vector/u;->a(III)I

    move-result v3

    .line 36
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static a(FI)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p0

    .line 44
    const v1, 0xffffff

    and-int/2addr v1, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static a(I)I
    .registers 4
    .parameter

    .prologue
    .line 81
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 82
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 83
    and-int/lit16 v2, p0, 0xff

    .line 88
    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0xe

    return v0
.end method

.method private static a(III)I
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    if-ge p0, p1, :cond_3

    :goto_2
    return p1

    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    goto :goto_2

    :cond_7
    move p1, p0

    goto :goto_2
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const v4, 0xff00

    .line 59
    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 60
    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 61
    and-int v2, p1, v4

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 62
    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    and-int/lit16 v4, p1, 0xff

    or-int/2addr v3, v4

    .line 64
    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 65
    return-void
.end method

.method public static b(I)F
    .registers 8
    .parameter

    .prologue
    const/high16 v6, 0x4080

    const/high16 v5, 0x4000

    const/high16 v4, 0x4270

    .line 99
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    .line 100
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    .line 101
    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    .line 103
    cmpl-float v3, v0, v1

    if-nez v3, :cond_1e

    cmpl-float v3, v1, v2

    if-nez v3, :cond_1e

    .line 105
    const/high16 v0, -0x4080

    .line 123
    :goto_1d
    return v0

    .line 106
    :cond_1e
    cmpl-float v3, v0, v1

    if-ltz v3, :cond_2c

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2c

    .line 108
    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    sub-float/2addr v0, v2

    div-float v0, v1, v0

    goto :goto_1d

    .line 109
    :cond_2c
    cmpl-float v3, v1, v0

    if-lez v3, :cond_3b

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3b

    .line 111
    sub-float/2addr v0, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v5, v0

    mul-float/2addr v0, v4

    goto :goto_1d

    .line 112
    :cond_3b
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4b

    cmpl-float v3, v2, v0

    if-lez v3, :cond_4b

    .line 114
    sub-float/2addr v2, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    add-float/2addr v0, v5

    mul-float/2addr v0, v4

    goto :goto_1d

    .line 115
    :cond_4b
    cmpl-float v3, v2, v1

    if-lez v3, :cond_5c

    cmpl-float v3, v1, v0

    if-lez v3, :cond_5c

    .line 117
    sub-float/2addr v1, v0

    sub-float v0, v2, v0

    div-float v0, v1, v0

    sub-float v0, v6, v0

    mul-float/2addr v0, v4

    goto :goto_1d

    .line 118
    :cond_5c
    cmpl-float v3, v2, v0

    if-lez v3, :cond_6b

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_6b

    .line 120
    sub-float/2addr v0, v1

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v6

    mul-float/2addr v0, v4

    goto :goto_1d

    .line 123
    :cond_6b
    const/high16 v3, 0x40c0

    sub-float/2addr v2, v1

    sub-float/2addr v0, v1

    div-float v0, v2, v0

    sub-float v0, v3, v0

    mul-float/2addr v0, v4

    goto :goto_1d
.end method

.method public static c(I)Z
    .registers 3
    .parameter

    .prologue
    .line 133
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/u;->b(I)F

    move-result v0

    .line 134
    const/high16 v1, 0x42a0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_12

    const/high16 v1, 0x4320

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
