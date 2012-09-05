.class public final Lcom/google/android/opengl/common/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# instance fields
.field public l:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 4
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 28
    iput p2, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 29
    iput p3, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 30
    invoke-direct {p0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/opengl/common/Float3;)V
    .registers 3
    .parameter "b"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->x:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 21
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->y:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 22
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->z:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 23
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->l:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 24
    return-void
.end method

.method public constructor <init>([F)V
    .registers 4
    .parameter "farray"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 40
    :goto_7
    return-void

    .line 36
    :cond_8
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 37
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 38
    const/4 v0, 0x2

    aget v0, p1, v0

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 39
    invoke-direct {p0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    goto :goto_7
.end method

.method public static dot(Lcom/google/android/opengl/common/Float3;Lcom/google/android/opengl/common/Float3;)F
    .registers 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 66
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v2, p1, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v3, p1, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v3, p1, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 67
    .local v0, r:F
    return v0
.end method

.method public static getArray(I)[Lcom/google/android/opengl/common/Float3;
    .registers 4
    .parameter "count"

    .prologue
    .line 52
    new-array v1, p0, [Lcom/google/android/opengl/common/Float3;

    .line 53
    .local v1, r:[Lcom/google/android/opengl/common/Float3;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p0, :cond_f

    .line 54
    new-instance v2, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v2}, Lcom/google/android/opengl/common/Float3;-><init>()V

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 56
    :cond_f
    return-object v1
.end method

.method private getLength()V
    .registers 5

    .prologue
    .line 131
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 132
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 133
    return-void
.end method

.method public static getUnit()Lcom/google/android/opengl/common/Float3;
    .registers 2

    .prologue
    const/high16 v1, 0x3f80

    .line 60
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/opengl/common/Float3;-><init>(FFF)V

    .line 61
    .local v0, r:Lcom/google/android/opengl/common/Float3;
    return-object v0
.end method

.method public static mupltiple(Lcom/google/android/opengl/common/Float3;F)Lcom/google/android/opengl/common/Float3;
    .registers 4
    .parameter "a"
    .parameter "t"

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    .line 102
    .local v0, r:Lcom/google/android/opengl/common/Float3;
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 103
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 104
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 106
    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    .line 107
    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/android/opengl/common/Float3;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 79
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 80
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 81
    invoke-direct {p0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    .line 82
    return-void
.end method

.method public cross(Lcom/google/android/opengl/common/Float3;)Lcom/google/android/opengl/common/Float3;
    .registers 6
    .parameter "b"

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    .line 114
    .local v0, r:Lcom/google/android/opengl/common/Float3;
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v2, p1, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v3, p1, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 115
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v2, p1, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v3, p1, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 116
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v2, p1, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v3, p1, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 118
    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    .line 119
    return-object v0
.end method

.method public minus(Lcom/google/android/opengl/common/Float3;)V
    .registers 4
    .parameter "b"

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 72
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 73
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v1, p1, Lcom/google/android/opengl/common/Float3;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 74
    invoke-direct {p0}, Lcom/google/android/opengl/common/Float3;->getLength()V

    .line 75
    return-void
.end method

.method public normalize()V
    .registers 3

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->l:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 86
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->l:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 87
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    iget v1, p0, Lcom/google/android/opengl/common/Float3;->l:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 88
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 89
    return-void
.end method

.method public set(Lcom/google/android/opengl/common/Float3;)V
    .registers 3
    .parameter "a"

    .prologue
    .line 44
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->x:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 45
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->y:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 46
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->z:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 47
    iget v0, p1, Lcom/google/android/opengl/common/Float3;->l:F

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 48
    return-void
.end method

.method public times(F)V
    .registers 3
    .parameter "t"

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->x:F

    .line 93
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->y:F

    .line 94
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->z:F

    .line 95
    iget v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float3;->l:F

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Float3: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/common/Float3;->z:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, " Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/google/android/opengl/common/Float3;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
