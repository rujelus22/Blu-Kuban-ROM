.class public Lcom/google/android/opengl/glview/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# instance fields
.field private mP1:Lcom/google/android/opengl/glview/Point;

.field private mP2:Lcom/google/android/opengl/glview/Point;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/google/android/opengl/glview/Point;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    .line 14
    new-instance v0, Lcom/google/android/opengl/glview/Point;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/Spline;->setDefault()V

    .line 21
    return-void
.end method

.method private clampToZeroOne(F)F
    .registers 5
    .parameter "value"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 106
    cmpg-float v2, p1, v0

    if-gez v2, :cond_9

    move p1, v0

    .line 111
    .end local p1
    :cond_8
    :goto_8
    return p1

    .line 108
    .restart local p1
    :cond_9
    cmpl-float v0, p1, v1

    if-lez v0, :cond_8

    move p1, v1

    .line 109
    goto :goto_8
.end method


# virtual methods
.method public approximatedCubicBerzierParameter(F)F
    .registers 17
    .parameter "x"

    .prologue
    .line 45
    const/high16 v7, 0x3f80

    .line 46
    .local v7, max:F
    const/4 v8, 0x0

    .line 47
    .local v8, min:F
    const/4 v9, 0x0

    .line 48
    .local v9, p0x:F
    iget-object v13, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iget v10, v13, Lcom/google/android/opengl/glview/Point;->x:F

    .line 49
    .local v10, p1x:F
    iget-object v13, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    iget v11, v13, Lcom/google/android/opengl/glview/Point;->x:F

    .line 50
    .local v11, p2x:F
    const/high16 v12, 0x3f80

    .line 52
    .local v12, p3x:F
    const/4 v6, 0x0

    .local v6, i:I
    :goto_f
    const/16 v13, 0x3e8

    if-ge v6, v13, :cond_68

    .line 54
    add-float v13, v9, v10

    const/high16 v14, 0x3f00

    mul-float v0, v13, v14

    .line 55
    .local v0, a:F
    add-float v13, v10, v11

    const/high16 v14, 0x3f00

    mul-float v1, v13, v14

    .line 56
    .local v1, b:F
    add-float v13, v12, v11

    const/high16 v14, 0x3f00

    mul-float v2, v13, v14

    .line 57
    .local v2, c:F
    add-float v13, v0, v1

    const/high16 v14, 0x3f00

    mul-float v3, v13, v14

    .line 58
    .local v3, d:F
    add-float v13, v1, v2

    const/high16 v14, 0x3f00

    mul-float v4, v13, v14

    .line 59
    .local v4, e:F
    add-float v13, v3, v4

    const/high16 v14, 0x3f00

    mul-float v5, v13, v14

    .line 61
    .local v5, f:F
    sub-float v13, v5, p1

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3089705f

    cmpg-float v13, v13, v14

    if-gez v13, :cond_4e

    .line 62
    add-float v13, v8, v7

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    invoke-direct {p0, v13}, Lcom/google/android/opengl/glview/Spline;->clampToZeroOne(F)F

    move-result v13

    .line 78
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    .end local v3           #d:F
    .end local v4           #e:F
    .end local v5           #f:F
    :goto_4d
    return v13

    .line 65
    .restart local v0       #a:F
    .restart local v1       #b:F
    .restart local v2       #c:F
    .restart local v3       #d:F
    .restart local v4       #e:F
    .restart local v5       #f:F
    :cond_4e
    cmpg-float v13, v5, p1

    if-gez v13, :cond_5e

    .line 66
    move v9, v5

    .line 67
    move v10, v4

    .line 68
    move v11, v2

    .line 69
    add-float v13, v8, v7

    const/high16 v14, 0x3f00

    mul-float v8, v13, v14

    .line 52
    :goto_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 71
    :cond_5e
    move v10, v0

    .line 72
    move v11, v3

    .line 73
    move v12, v5

    .line 74
    add-float v13, v8, v7

    const/high16 v14, 0x3f00

    mul-float v7, v13, v14

    goto :goto_5b

    .line 78
    .end local v0           #a:F
    .end local v1           #b:F
    .end local v2           #c:F
    .end local v3           #d:F
    .end local v4           #e:F
    .end local v5           #f:F
    :cond_68
    add-float v13, v8, v7

    const/high16 v14, 0x3f00

    mul-float/2addr v13, v14

    invoke-direct {p0, v13}, Lcom/google/android/opengl/glview/Spline;->clampToZeroOne(F)F

    move-result v13

    goto :goto_4d
.end method

.method public approximatedInterpolatedValue(F)F
    .registers 4
    .parameter "x"

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/Spline;->approximatedCubicBerzierParameter(F)F

    move-result v0

    .line 35
    .local v0, t:F
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/Spline;->yCubicInterpolation(F)F

    move-result v1

    return v1
.end method

.method public setDefault()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 116
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 117
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    iput v2, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 118
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    iput v2, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 119
    return-void
.end method

.method public setEaseOut()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 130
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 131
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    const/high16 v1, 0x3e80

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 132
    iget-object v0, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 133
    return-void
.end method

.method public yCubicInterpolation(F)F
    .registers 9
    .parameter "time"

    .prologue
    const/high16 v6, 0x4040

    const/high16 v5, 0x3f80

    .line 87
    sub-float v1, v5, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v6

    mul-float/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/opengl/glview/Spline;->mP1:Lcom/google/android/opengl/glview/Point;

    iget v2, v2, Lcom/google/android/opengl/glview/Point;->y:F

    mul-float/2addr v1, v2

    sub-float v2, v5, p1

    mul-float/2addr v2, v6

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/opengl/glview/Spline;->mP2:Lcom/google/android/opengl/glview/Point;

    iget v3, v3, Lcom/google/android/opengl/glview/Point;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, p1

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v0, v1, v2

    .line 90
    .local v0, result:F
    return v0
.end method
