.class public final Lar/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lar/i;->a:[B

    return-void

    :array_a
    .array-data 0x1
        0x0t
        0x4t
        0x9t
        0xdt
        0x11t
        0x16t
        0x1at
        0x1et
        0x23t
        0x27t
        0x2bt
        0x30t
        0x34t
        0x38t
        0x3ct
        0x41t
        0x45t
        0x49t
        0x4dt
        0x51t
        0x56t
        0x5at
        0x5et
        0x62t
        0x66t
        0x6at
        0x6et
        0x71t
        0x75t
        0x79t
        0x7dt
        0x81t
        0x84t
        0x88t
        0x8ct
        0x8ft
        0x93t
        0x96t
        0x9at
        0x9dt
        0xa1t
        0xa4t
        0xa7t
        0xaat
        0xaet
        0xb1t
        0xb4t
        0xb7t
        0xbat
        0xbdt
        0xc0t
        0xc2t
        0xc5t
        0xc8t
        0xcat
        0xcdt
        0xcft
        0xd2t
        0xd4t
        0xd6t
        0xd9t
        0xdbt
        0xddt
        0xdft
        0xe1t
        0xe3t
        0xe4t
        0xe6t
        0xe8t
        0xe9t
        0xebt
        0xect
        0xeet
        0xeft
        0xf0t
        0xf1t
        0xf3t
        0xf4t
        0xf5t
        0xf5t
        0xf6t
        0xf7t
        0xf8t
        0xf8t
        0xf9t
        0xf9t
        0xf9t
        0xfat
        0xfat
        0xfat
        0xfat
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DD)D
    .registers 6

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static a(F)F
    .registers 3

    const/high16 v1, 0x43b4

    cmpl-float v0, p0, v1

    if-ltz v0, :cond_8

    sub-float/2addr p0, v1

    :cond_7
    :goto_7
    return p0

    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7

    add-float/2addr p0, v1

    goto :goto_7
.end method

.method public static a(D)I
    .registers 6

    const-wide/high16 v2, 0x3fe0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_c

    sub-double v0, p0, v2

    :goto_a
    double-to-int v0, v0

    return v0

    :cond_c
    add-double v0, p0, v2

    goto :goto_a
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, 0x168

    invoke-static {p0, v0}, Lar/i;->c(II)I

    move-result v0

    return v0
.end method

.method public static a(II)I
    .registers 3

    if-ltz p0, :cond_8

    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    :goto_7
    return v0

    :cond_8
    div-int v0, p0, p1

    goto :goto_7
.end method

.method public static b(F)F
    .registers 3

    const/high16 v1, 0x43b4

    const/high16 v0, 0x4334

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_a

    sub-float/2addr p0, v1

    :cond_9
    :goto_9
    return p0

    :cond_a
    const/high16 v0, -0x3ccc

    cmpg-float v0, p0, v0

    if-gez v0, :cond_9

    add-float/2addr p0, v1

    goto :goto_9
.end method

.method public static b(I)I
    .registers 3

    const/16 v0, 0x168

    invoke-static {p0, v0}, Lar/i;->c(II)I

    move-result v0

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_13

    sget-object v1, Lar/i;->a:[B

    rsub-int/lit8 v0, v0, 0x5a

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    :goto_12
    return v0

    :cond_13
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_21

    sget-object v1, Lar/i;->a:[B

    add-int/lit8 v0, v0, -0x5a

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_12

    :cond_21
    const/16 v1, 0x10e

    if-ge v0, v1, :cond_2f

    sget-object v1, Lar/i;->a:[B

    rsub-int v0, v0, 0x10e

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    goto :goto_12

    :cond_2f
    sget-object v1, Lar/i;->a:[B

    add-int/lit16 v0, v0, -0x10e

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_12
.end method

.method public static b(II)I
    .registers 3

    div-int/lit8 v0, p1, 0x2

    add-int/2addr v0, p0

    div-int/2addr v0, p1

    return v0
.end method

.method public static c(I)I
    .registers 5

    const/4 v0, 0x0

    if-gtz p0, :cond_4

    :cond_3
    return v0

    :cond_4
    shr-int/lit8 v1, p0, 0xf

    add-int/lit8 v1, v1, 0x2

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_b
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1b

    div-int v2, p0, v0

    add-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x1

    if-eq v0, v2, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_b

    :cond_1b
    :goto_1b
    div-int v1, p0, v0

    if-le v0, v1, :cond_22

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_22
    mul-int v1, v0, v0

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, p0, v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method private static c(II)I
    .registers 3

    rem-int v0, p0, p1

    if-gez v0, :cond_5

    add-int/2addr v0, p1

    :cond_5
    return v0
.end method

.method public static d(I)I
    .registers 2

    const/16 v0, 0x168

    if-lt p0, v0, :cond_7

    add-int/lit16 p0, p0, -0x168

    :cond_6
    :goto_6
    return p0

    :cond_7
    if-gez p0, :cond_6

    add-int/lit16 p0, p0, 0x168

    goto :goto_6
.end method

.method public static e(I)I
    .registers 2

    const/16 v0, 0xb4

    if-lt p0, v0, :cond_7

    add-int/lit16 p0, p0, -0x168

    :cond_6
    :goto_6
    return p0

    :cond_7
    const/16 v0, -0xb4

    if-ge p0, v0, :cond_6

    add-int/lit16 p0, p0, 0x168

    goto :goto_6
.end method
