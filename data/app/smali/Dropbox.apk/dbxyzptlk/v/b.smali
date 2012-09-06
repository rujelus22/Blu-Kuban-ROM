.class final Ldbxyzptlk/v/b;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method static synthetic a(I)I
    .registers 2
    .parameter

    .prologue
    .line 125
    invoke-static {p0}, Ldbxyzptlk/v/b;->b(I)I

    move-result v0

    return v0
.end method

.method private static b(I)I
    .registers 4
    .parameter

    .prologue
    .line 553
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 554
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 555
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 556
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 557
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 558
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method
