.class public final Lcom/google/android/videochat/util/MatrixUtil;
.super Ljava/lang/Object;
.source "MatrixUtil.java"


# static fields
.field private static final MATRIX_FLIP_H:[F

.field private static final MATRIX_FLIP_V:[F

.field private static final MATRIX_IDENTITY:[F

.field private static final MATRIX_ROTATE_180:[F

.field private static final MATRIX_ROTATE_270:[F

.field private static final MATRIX_ROTATE_90:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 8
    new-array v0, v1, [F

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_IDENTITY:[F

    .line 14
    new-array v0, v1, [F

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_FLIP_H:[F

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_76

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_FLIP_V:[F

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_90:[F

    .line 32
    new-array v0, v1, [F

    fill-array-data v0, :array_be

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_180:[F

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_e2

    sput-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_270:[F

    return-void

    .line 8
    nop

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 14
    :array_52
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 20
    :array_76
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 26
    :array_9a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_be
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 38
    :array_e2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentityMatrix()[F
    .registers 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_IDENTITY:[F

    return-object v0
.end method

.method public static getRotate180Matrix()[F
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_180:[F

    return-object v0
.end method

.method public static getRotate270Matrix()[F
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_270:[F

    return-object v0
.end method

.method public static getRotate90Matrix()[F
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/videochat/util/MatrixUtil;->MATRIX_ROTATE_90:[F

    return-object v0
.end method

.method public static matrixMultiply4x4([F[F[F)V
    .registers 12
    .parameter "a"
    .parameter "b"
    .parameter "out"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 70
    aget v0, p0, v4

    aget v1, p1, v4

    mul-float/2addr v0, v1

    aget v1, p0, v8

    aget v2, p1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p0, v1

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p0, v1

    aget v2, p1, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p2, v4

    .line 71
    aget v0, p0, v5

    aget v1, p1, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p0, v1

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p0, v1

    aget v2, p1, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p2, v5

    .line 72
    aget v0, p0, v6

    aget v1, p1, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p0, v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p0, v1

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p0, v1

    aget v2, p1, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p2, v6

    .line 73
    aget v0, p0, v7

    aget v1, p1, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p0, v1

    aget v2, p1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p0, v1

    aget v2, p1, v6

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p0, v1

    aget v2, p1, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p2, v7

    .line 75
    aget v0, p0, v4

    aget v1, p1, v8

    mul-float/2addr v0, v1

    aget v1, p0, v8

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p0, v1

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p0, v1

    const/4 v2, 0x7

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    aput v0, p2, v8

    .line 76
    const/4 v0, 0x5

    aget v1, p0, v5

    aget v2, p1, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 77
    const/4 v0, 0x6

    aget v1, p0, v6

    aget v2, p1, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 78
    const/4 v0, 0x7

    aget v1, p0, v7

    aget v2, p1, v8

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 80
    const/16 v0, 0x8

    aget v1, p0, v4

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v8

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    const/16 v3, 0xb

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 81
    const/16 v0, 0x9

    aget v1, p0, v5

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    const/16 v3, 0xb

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 82
    const/16 v0, 0xa

    aget v1, p0, v6

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    const/16 v3, 0xb

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 83
    const/16 v0, 0xb

    aget v1, p0, v7

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/16 v3, 0x9

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    const/16 v3, 0xa

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    const/16 v3, 0xb

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 85
    const/16 v0, 0xc

    aget v1, p0, v4

    const/16 v2, 0xc

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v8

    const/16 v3, 0xd

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/16 v3, 0xe

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, p0, v2

    const/16 v3, 0xf

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 86
    const/16 v0, 0xd

    aget v1, p0, v5

    const/16 v2, 0xc

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/16 v3, 0xd

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x9

    aget v2, p0, v2

    const/16 v3, 0xe

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xd

    aget v2, p0, v2

    const/16 v3, 0xf

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 87
    const/16 v0, 0xe

    aget v1, p0, v6

    const/16 v2, 0xc

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/16 v3, 0xd

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p0, v2

    const/16 v3, 0xe

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xe

    aget v2, p0, v2

    const/16 v3, 0xf

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 88
    const/16 v0, 0xf

    aget v1, p0, v7

    const/16 v2, 0xc

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/16 v3, 0xd

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xb

    aget v2, p0, v2

    const/16 v3, 0xe

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xf

    aget v2, p0, v2

    const/16 v3, 0xf

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p2, v0

    .line 89
    return-void
.end method
