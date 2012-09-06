.class public Lcom/google/android/opengl/glview/FloatUtils;
.super Ljava/lang/Object;
.source "FloatUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final animate(FFF)F
    .registers 4
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 24
    const/high16 v0, 0x4080

    mul-float/2addr p2, v0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/google/android/opengl/glview/FloatUtils;->animateAfterFactoringSpeed(FFF)F

    move-result v0

    return v0
.end method

.method private static final animateAfterFactoringSpeed(FFF)F
    .registers 6
    .parameter "prevVal"
    .parameter "targetVal"
    .parameter "timeElapsed"

    .prologue
    .line 29
    cmpl-float v1, p0, p1

    if-nez v1, :cond_5

    .line 43
    .end local p1
    :cond_4
    :goto_4
    return p1

    .line 31
    .restart local p1
    :cond_5
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float v0, p0, v1

    .line 32
    .local v0, newVal:F
    sub-float v1, v0, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 34
    cmpl-float v1, v0, p0

    if-eqz v1, :cond_4

    .line 38
    cmpl-float v1, p0, p1

    if-lez v1, :cond_23

    cmpg-float v1, v0, p1

    if-ltz v1, :cond_4

    .line 40
    :cond_23
    cmpg-float v1, p0, p1

    if-gez v1, :cond_2b

    cmpl-float v1, v0, p1

    if-gtz v1, :cond_4

    :cond_2b
    move p1, v0

    .line 43
    goto :goto_4
.end method

.method public static animateWithDelta(FFFF)F
    .registers 7
    .parameter "dt"
    .parameter "currentPos"
    .parameter "targetPos"
    .parameter "epsilon"

    .prologue
    .line 50
    sub-float v1, p2, p1

    const/high16 v2, 0x4080

    mul-float/2addr v1, v2

    mul-float/2addr v1, p0

    add-float v0, p1, v1

    .line 51
    .local v0, result:F
    sub-float v1, v0, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p3

    if-gez v1, :cond_13

    .line 52
    move v0, p2

    .line 54
    :cond_13
    return v0
.end method
