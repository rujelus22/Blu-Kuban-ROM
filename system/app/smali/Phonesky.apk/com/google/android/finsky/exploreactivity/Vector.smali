.class public Lcom/google/android/finsky/exploreactivity/Vector;
.super Ljava/lang/Object;
.source "Vector.java"


# static fields
.field public static TO_DEGREES:F

.field public static TO_RADIANS:F


# instance fields
.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const v0, 0x3c8efa36

    sput v0, Lcom/google/android/finsky/exploreactivity/Vector;->TO_RADIANS:F

    .line 16
    const v0, 0x42652ee0

    sput v0, Lcom/google/android/finsky/exploreactivity/Vector;->TO_DEGREES:F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 33
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 4
    .parameter "other"

    .prologue
    .line 126
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    iget v1, p1, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 127
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    iget v1, p1, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 128
    return-object p0
.end method

.method public cpy()Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 4

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/finsky/exploreactivity/Vector;

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/exploreactivity/Vector;-><init>(FF)V

    return-object v0
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    return v0
.end method

.method public len()F
    .registers 4

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    iget v2, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public mul(F)Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 3
    .parameter "scalar"

    .prologue
    .line 163
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 164
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 165
    return-object p0
.end method

.method public rotate(F)Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 9
    .parameter "angle"

    .prologue
    .line 212
    sget v5, Lcom/google/android/finsky/exploreactivity/Vector;->TO_RADIANS:F

    mul-float v3, p1, v5

    .line 213
    .local v3, rad:F
    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 214
    .local v0, cos:F
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 216
    .local v4, sin:F
    iget v5, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    mul-float/2addr v5, v0

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    mul-float/2addr v6, v4

    sub-float v1, v5, v6

    .line 217
    .local v1, newX:F
    iget v5, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    mul-float/2addr v6, v0

    add-float v2, v5, v6

    .line 219
    .local v2, newY:F
    iput v1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 220
    iput v2, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 222
    return-object p0
.end method

.method public set(FF)Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 89
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 90
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 91
    return-object p0
.end method

.method public set(Lcom/google/android/finsky/exploreactivity/Vector;)Lcom/google/android/finsky/exploreactivity/Vector;
    .registers 3
    .parameter "other"

    .prologue
    .line 101
    iget v0, p1, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 102
    iget v0, p1, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 103
    return-object p0
.end method

.method public setX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 70
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mX:F

    .line 71
    return-void
.end method

.method public setY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/Vector;->mY:F

    .line 79
    return-void
.end method
