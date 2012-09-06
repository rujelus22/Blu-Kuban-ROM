.class public Lcom/google/android/maps/driveabout/vector/eb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x14

    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/android/maps/driveabout/vector/eb;->a:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/android/maps/driveabout/vector/eb;->b:[F

    .line 66
    new-array v0, v1, [F

    fill-array-data v0, :array_62

    sput-object v0, Lcom/google/android/maps/driveabout/vector/eb;->c:[F

    return-void

    .line 52
    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_36
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 66
    :array_62
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 85
    const v0, 0x3d80adfd

    .line 86
    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v4, v3

    .line 87
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v5

    .line 88
    const/high16 v1, 0x3f80

    .line 96
    const/4 v0, 0x0

    move v3, v1

    move v1, v2

    :goto_13
    const/16 v6, 0x64

    if-ge v0, v6, :cond_2f

    .line 97
    add-float v6, v3, v2

    add-float v7, v1, v2

    invoke-interface {p0, v6, v7, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 98
    if-eqz p1, :cond_24

    .line 99
    int-to-short v6, v0

    invoke-interface {p1, v6}, Lcom/google/android/maps/driveabout/vector/bJ;->d(I)V

    .line 104
    :cond_24
    neg-float v6, v1

    .line 108
    mul-float/2addr v6, v4

    add-float/2addr v6, v3

    .line 109
    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 112
    mul-float v3, v6, v5

    .line 113
    mul-float/2addr v1, v5

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 115
    :cond_2f
    return-void
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 130
    const v1, 0x3d80adfd

    .line 131
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v5, v3

    .line 132
    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    .line 133
    const/high16 v4, 0x3f80

    .line 141
    invoke-interface {p0, v2, v2, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 142
    if-eqz p1, :cond_19

    .line 143
    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/vector/bJ;->d(I)V

    :cond_19
    move v1, v2

    move v3, v4

    .line 145
    :goto_1b
    const/16 v7, 0x64

    if-ge v0, v7, :cond_39

    .line 146
    add-float v7, v3, v2

    add-float v8, v1, v2

    invoke-interface {p0, v7, v8, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    .line 147
    if-eqz p1, :cond_2e

    .line 148
    add-int/lit8 v7, v0, 0x1

    int-to-short v7, v7

    invoke-interface {p1, v7}, Lcom/google/android/maps/driveabout/vector/bJ;->d(I)V

    .line 153
    :cond_2e
    neg-float v7, v1

    .line 157
    mul-float/2addr v7, v5

    add-float/2addr v7, v3

    .line 158
    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 161
    mul-float v3, v7, v6

    .line 162
    mul-float/2addr v1, v6

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 164
    :cond_39
    if-eqz p1, :cond_40

    .line 165
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/vector/bJ;->d(I)V

    .line 169
    :goto_3f
    return-void

    .line 167
    :cond_40
    add-float v0, v4, v2

    invoke-interface {p0, v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/ea;->a(FFF)V

    goto :goto_3f
.end method
