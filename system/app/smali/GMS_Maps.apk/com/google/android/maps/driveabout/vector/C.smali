.class public Lcom/google/android/maps/driveabout/vector/C;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFFF)I
    .registers 11

    const/16 v6, 0xff

    const/4 v5, 0x0

    const/high16 v3, 0x437f

    const/high16 v4, 0x3f00

    mul-float v0, p0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/C;->a(III)I

    move-result v0

    mul-float v1, p1, v3

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1, v5, v6}, Lcom/google/android/maps/driveabout/vector/C;->a(III)I

    move-result v1

    mul-float v2, p2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2, v5, v6}, Lcom/google/android/maps/driveabout/vector/C;->a(III)I

    move-result v2

    mul-float/2addr v3, p3

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3, v5, v6}, Lcom/google/android/maps/driveabout/vector/C;->a(III)I

    move-result v3

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

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const v1, 0xffffff

    and-int/2addr v1, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(III)I
    .registers 3

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

    const v4, 0xff00

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    and-int v2, p1, v4

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    and-int/lit16 v4, p1, 0xff

    or-int/2addr v3, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method
