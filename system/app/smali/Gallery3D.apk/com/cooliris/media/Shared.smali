.class public final Lcom/cooliris/media/Shared;
.super Ljava/lang/Object;
.source "Shared.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(III)I
    .registers 3
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 68
    if-ge p0, p1, :cond_4

    .line 69
    move p0, p1

    .line 73
    :cond_3
    :goto_3
    return p0

    .line 70
    :cond_4
    if-le p0, p2, :cond_3

    .line 71
    move p0, p2

    goto :goto_3
.end method

.method public static clamp(JJJ)J
    .registers 7
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 77
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    .line 78
    move-wide p0, p2

    .line 82
    :cond_5
    :goto_5
    return-wide p0

    .line 79
    :cond_6
    cmp-long v0, p0, p4

    if-lez v0, :cond_5

    .line 80
    move-wide p0, p4

    goto :goto_5
.end method

.method public static degreesToExifOrientation(F)I
    .registers 3
    .parameter "normalizedAngle"

    .prologue
    const/4 v0, 0x1

    .line 113
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_7

    .line 122
    :cond_6
    :goto_6
    return v0

    .line 115
    :cond_7
    const/high16 v1, 0x42b4

    cmpl-float v1, p0, v1

    if-nez v1, :cond_f

    .line 116
    const/4 v0, 0x6

    goto :goto_6

    .line 117
    :cond_f
    const/high16 v1, 0x4334

    cmpl-float v1, p0, v1

    if-nez v1, :cond_17

    .line 118
    const/4 v0, 0x3

    goto :goto_6

    .line 119
    :cond_17
    const/high16 v1, 0x4387

    cmpl-float v1, p0, v1

    if-nez v1, :cond_6

    .line 120
    const/16 v0, 0x8

    goto :goto_6
.end method

.method public static exifOrientationToDegrees(I)F
    .registers 2
    .parameter "exifOrientation"

    .prologue
    .line 126
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 127
    const/high16 v0, 0x42b4

    .line 133
    :goto_5
    return v0

    .line 128
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 129
    const/high16 v0, 0x4334

    goto :goto_5

    .line 130
    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_13

    .line 131
    const/high16 v0, 0x4387

    goto :goto_5

    .line 133
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isPowerOf2(I)Z
    .registers 2
    .parameter "n"

    .prologue
    .line 33
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static midPointIterator(I)I
    .registers 4
    .parameter "i"

    .prologue
    .line 41
    if-eqz p0, :cond_14

    .line 42
    add-int/lit8 v2, p0, -0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 43
    .local v1, tick:I
    add-int/lit8 v2, p0, -0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    const/4 v0, 0x1

    .line 44
    .local v0, pass:I
    :goto_f
    mul-int v2, v1, v0

    .line 46
    .end local v0           #pass:I
    .end local v1           #tick:I
    :goto_11
    return v2

    .line 43
    .restart local v1       #tick:I
    :cond_12
    const/4 v0, -0x1

    goto :goto_f

    .line 46
    .end local v1           #tick:I
    :cond_14
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static nextPowerOf2(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 50
    add-int/lit8 p0, p0, -0x1

    .line 51
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 52
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 53
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 54
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 55
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 56
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static normalizePositive(F)F
    .registers 6
    .parameter "angleToRotate"

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x43b4

    .line 95
    cmpl-float v3, p0, v2

    if-nez v3, :cond_9

    move p0, v2

    .line 109
    .local v0, n:I
    .local v1, nf:F
    :cond_8
    :goto_8
    return p0

    .line 98
    .end local v0           #n:I
    .end local v1           #nf:F
    :cond_9
    div-float v1, p0, v4

    .line 99
    .restart local v1       #nf:F
    const/4 v0, 0x0

    .line 100
    .restart local v0       #n:I
    cmpg-float v2, p0, v2

    if-gez v2, :cond_1e

    .line 101
    const/high16 v2, 0x3f80

    sub-float v2, v1, v2

    float-to-int v0, v2

    .line 105
    :cond_15
    :goto_15
    int-to-float v2, v0

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    .line 106
    cmpl-float v2, p0, v4

    if-nez v2, :cond_8

    .line 107
    const/4 p0, 0x0

    goto :goto_8

    .line 102
    :cond_1e
    cmpl-float v2, p0, v4

    if-lez v2, :cond_15

    .line 103
    float-to-int v0, v1

    goto :goto_15
.end method
