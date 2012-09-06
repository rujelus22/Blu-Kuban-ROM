.class public Lcom/google/zxing/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/zxing/j;->a:F

    .line 32
    iput p2, p0, Lcom/google/zxing/j;->b:F

    .line 33
    return-void
.end method

.method public static a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/google/zxing/j;->a:F

    iget v1, p1, Lcom/google/zxing/j;->a:F

    sub-float/2addr v0, v1

    .line 115
    iget v1, p0, Lcom/google/zxing/j;->b:F

    iget v2, p1, Lcom/google/zxing/j;->b:F

    sub-float/2addr v1, v2

    .line 116
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static a([Lcom/google/zxing/j;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    aget-object v0, p0, v7

    aget-object v1, p0, v8

    invoke-static {v0, v1}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v0

    .line 73
    aget-object v1, p0, v8

    aget-object v2, p0, v9

    invoke-static {v1, v2}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v1

    .line 74
    aget-object v2, p0, v7

    aget-object v3, p0, v9

    invoke-static {v2, v3}, Lcom/google/zxing/j;->a(Lcom/google/zxing/j;Lcom/google/zxing/j;)F

    move-result v2

    .line 80
    cmpl-float v3, v1, v0

    if-ltz v3, :cond_4b

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4b

    .line 81
    aget-object v1, p0, v7

    .line 82
    aget-object v2, p0, v8

    .line 83
    aget-object v0, p0, v9

    .line 98
    :goto_29
    iget v3, v1, Lcom/google/zxing/j;->a:F

    iget v4, v1, Lcom/google/zxing/j;->b:F

    iget v5, v0, Lcom/google/zxing/j;->a:F

    sub-float/2addr v5, v3

    iget v6, v2, Lcom/google/zxing/j;->b:F

    sub-float/2addr v6, v4

    mul-float/2addr v5, v6

    iget v6, v0, Lcom/google/zxing/j;->b:F

    sub-float v4, v6, v4

    iget v6, v2, Lcom/google/zxing/j;->a:F

    sub-float v3, v6, v3

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_61

    .line 104
    :goto_44
    aput-object v0, p0, v7

    .line 105
    aput-object v1, p0, v8

    .line 106
    aput-object v2, p0, v9

    .line 107
    return-void

    .line 84
    :cond_4b
    cmpl-float v1, v2, v1

    if-ltz v1, :cond_5a

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5a

    .line 85
    aget-object v1, p0, v8

    .line 86
    aget-object v2, p0, v7

    .line 87
    aget-object v0, p0, v9

    goto :goto_29

    .line 89
    :cond_5a
    aget-object v1, p0, v9

    .line 90
    aget-object v2, p0, v7

    .line 91
    aget-object v0, p0, v8

    goto :goto_29

    :cond_61
    move-object v10, v0

    move-object v0, v2

    move-object v2, v10

    goto :goto_44
.end method


# virtual methods
.method public final a()F
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/google/zxing/j;->a:F

    return v0
.end method

.method public final b()F
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/google/zxing/j;->b:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lcom/google/zxing/j;

    if-eqz v1, :cond_18

    .line 45
    check-cast p1, Lcom/google/zxing/j;

    .line 46
    iget v1, p0, Lcom/google/zxing/j;->a:F

    iget v2, p1, Lcom/google/zxing/j;->a:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    iget v1, p0, Lcom/google/zxing/j;->b:F

    iget v2, p1, Lcom/google/zxing/j;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_18

    const/4 v0, 0x1

    .line 48
    :cond_18
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 52
    iget v0, p0, Lcom/google/zxing/j;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/j;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 57
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    iget v1, p0, Lcom/google/zxing/j;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 59
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    iget v1, p0, Lcom/google/zxing/j;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 61
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
