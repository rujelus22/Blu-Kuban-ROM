.class public Lcom/cooliris/media/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animate(FFF)F
    .registers 5
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 39
    const-string v0, "SPH-D710"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 40
    const/high16 v0, 0x4100

    mul-float/2addr p2, v0

    .line 44
    :goto_d
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0

    .line 42
    :cond_12
    const/high16 v0, 0x4120

    mul-float/2addr p2, v0

    goto :goto_d
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .registers 6
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 170
    cmpl-float v1, p0, p1

    if-nez v1, :cond_5

    .line 184
    .end local p1
    :cond_4
    :goto_4
    return p1

    .line 172
    .restart local p1
    :cond_5
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 173
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 175
    cmpl-float v1, v0, p0

    if-eqz v1, :cond_4

    .line 179
    cmpl-float v1, p0, p1

    if-lez v1, :cond_23

    cmpg-float v1, v0, p1

    if-ltz v1, :cond_4

    .line 181
    :cond_23
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2b

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_4

    :cond_2b
    move p1, v0

    .line 184
    goto :goto_4
.end method

.method public static final animateRotate(FFF)F
    .registers 5
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 49
    const-string v0, "SPH-D710"

    const-string v1, "SGH-I927"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 50
    const/high16 v0, 0x4100

    mul-float/2addr p2, v0

    .line 54
    :goto_d
    invoke-static {p0, p1, p2}, Lcom/cooliris/media/FloatUtils;->animateRotateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0

    .line 52
    :cond_12
    const/high16 v0, 0x4120

    mul-float/2addr p2, v0

    goto :goto_d
.end method

.method private static final animateRotateAfterFactoringSpeed(FFF)F
    .registers 6
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 192
    cmpl-float v2, p0, p1

    if-nez v2, :cond_5

    .line 210
    .end local p1
    :cond_4
    :goto_4
    return p1

    .line 194
    .restart local p1
    :cond_5
    sub-float v2, p1, p0

    mul-float/2addr v2, p2

    add-float v0, p0, v2

    .line 195
    .local v0, newVal:F
    const v1, 0x38d1b717

    .line 196
    .local v1, threadShould:F
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_14

    .line 197
    const v1, 0x3dcccccd

    .line 199
    :cond_14
    sub-float v2, v0, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v1

    if-ltz v2, :cond_4

    .line 201
    cmpl-float v2, v0, p0

    if-eqz v2, :cond_4

    .line 205
    cmpl-float v2, p0, p1

    if-lez v2, :cond_2a

    cmpg-float v2, v0, p1

    if-ltz v2, :cond_4

    .line 207
    :cond_2a
    cmpg-float v2, p0, p1

    if-gez v2, :cond_32

    cmpl-float v2, v0, p1

    if-gtz v2, :cond_4

    :cond_32
    move p1, v0

    .line 210
    goto :goto_4
.end method

.method public static final boundsContainsPoint(FFFFFF)Z
    .registers 7
    .parameter "left"
    .parameter "right"
    .parameter "top"
    .parameter "bottom"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 162
    cmpg-float v0, p4, p0

    if-ltz v0, :cond_10

    cmpl-float v0, p4, p1

    if-gtz v0, :cond_10

    cmpg-float v0, p5, p2

    if-ltz v0, :cond_10

    cmpl-float v0, p5, p3

    if-lez v0, :cond_12

    .line 163
    :cond_10
    const/4 v0, 0x0

    .line 165
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static final clamp(FFF)F
    .registers 4
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 123
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .line 128
    .end local p1
    :goto_4
    return p1

    .line 125
    .restart local p1
    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    .line 126
    goto :goto_4

    :cond_b
    move p1, p0

    .line 128
    goto :goto_4
.end method

.method public static final clamp(III)I
    .registers 3
    .parameter "val"
    .parameter "minVal"
    .parameter "maxVal"

    .prologue
    .line 140
    if-ge p0, p1, :cond_3

    .line 145
    .end local p1
    :goto_2
    return p1

    .line 142
    .restart local p1
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    .line 143
    goto :goto_2

    :cond_7
    move p1, p0

    .line 145
    goto :goto_2
.end method
