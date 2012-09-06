.class public final Ln/aB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:F

.field b:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, v0, v0}, Ln/aB;->a(FF)Ln/aB;

    .line 26
    return-void
.end method

.method public static a(Ln/Q;Ln/aB;Ln/Q;)Ln/Q;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget v0, p0, Ln/Q;->a:I

    iget v1, p1, Ln/aB;->a:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ln/Q;->b:I

    iget v2, p1, Ln/aB;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Ln/Q;->d(II)V

    .line 135
    return-object p2
.end method

.method public static a(Ln/aB;FLn/aB;)Ln/aB;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget v0, p0, Ln/aB;->a:F

    mul-float/2addr v0, p1

    iput v0, p2, Ln/aB;->a:F

    .line 159
    iget v0, p0, Ln/aB;->b:F

    mul-float/2addr v0, p1

    iput v0, p2, Ln/aB;->b:F

    .line 160
    return-object p2
.end method

.method public static a(Ln/aB;Ln/aB;)Ln/aB;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 187
    iget v0, p0, Ln/aB;->a:F

    neg-float v0, v0

    iput v0, p1, Ln/aB;->a:F

    .line 188
    iget v0, p0, Ln/aB;->b:F

    neg-float v0, v0

    iput v0, p1, Ln/aB;->b:F

    .line 189
    return-object p1
.end method

.method public static a(Ln/aB;Ln/aB;Ln/aB;)Ln/aB;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iget v0, p0, Ln/aB;->a:F

    iget v1, p1, Ln/aB;->a:F

    add-float/2addr v0, v1

    iput v0, p2, Ln/aB;->a:F

    .line 97
    iget v0, p0, Ln/aB;->b:F

    iget v1, p1, Ln/aB;->b:F

    add-float/2addr v0, v1

    iput v0, p2, Ln/aB;->b:F

    .line 98
    return-object p2
.end method

.method public static b(Ln/aB;Ln/aB;)Ln/aB;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Ln/aB;->c()F

    move-result v0

    .line 226
    cmpl-float v1, v0, v2

    if-nez v1, :cond_e

    .line 227
    iput v2, p1, Ln/aB;->a:F

    .line 228
    iput v2, p1, Ln/aB;->b:F

    .line 233
    :goto_d
    return-object p1

    .line 230
    :cond_e
    iget v1, p0, Ln/aB;->a:F

    div-float/2addr v1, v0

    iput v1, p1, Ln/aB;->a:F

    .line 231
    iget v1, p0, Ln/aB;->b:F

    div-float v0, v1, v0

    iput v0, p1, Ln/aB;->b:F

    goto :goto_d
.end method

.method public static c(Ln/aB;Ln/aB;)Ln/aB;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 249
    iget v0, p0, Ln/aB;->a:F

    .line 250
    iget v1, p0, Ln/aB;->b:F

    neg-float v1, v1

    iput v1, p1, Ln/aB;->a:F

    .line 251
    iput v0, p1, Ln/aB;->b:F

    .line 252
    return-object p1
.end method


# virtual methods
.method public a()Ln/aB;
    .registers 2

    .prologue
    .line 196
    invoke-static {p0, p0}, Ln/aB;->a(Ln/aB;Ln/aB;)Ln/aB;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Ln/aB;
    .registers 3
    .parameter

    .prologue
    .line 167
    invoke-static {p0, p1, p0}, Ln/aB;->a(Ln/aB;FLn/aB;)Ln/aB;

    move-result-object v0

    return-object v0
.end method

.method public a(FF)Ln/aB;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    iput p1, p0, Ln/aB;->a:F

    .line 63
    iput p2, p0, Ln/aB;->b:F

    .line 64
    return-object p0
.end method

.method public a(Ln/Q;Ln/Q;)Ln/aB;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 90
    iget v0, p2, Ln/Q;->a:I

    iget v1, p1, Ln/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ln/aB;->a:F

    .line 91
    iget v0, p2, Ln/Q;->b:I

    iget v1, p1, Ln/Q;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Ln/aB;->b:F

    .line 92
    return-object p0
.end method

.method public a(Ln/aB;)Ln/aB;
    .registers 3
    .parameter

    .prologue
    .line 71
    iget v0, p1, Ln/aB;->a:F

    iput v0, p0, Ln/aB;->a:F

    .line 72
    iget v0, p1, Ln/aB;->b:F

    iput v0, p0, Ln/aB;->b:F

    .line 73
    return-object p0
.end method

.method public b()F
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0, p0}, Ln/aB;->c(Ln/aB;)F

    move-result v0

    return v0
.end method

.method public b(Ln/aB;)Ln/aB;
    .registers 2
    .parameter

    .prologue
    .line 105
    invoke-static {p0, p1, p0}, Ln/aB;->a(Ln/aB;Ln/aB;Ln/aB;)Ln/aB;

    .line 106
    return-object p0
.end method

.method public b(FF)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 289
    iget v0, p0, Ln/aB;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_e

    iget v0, p0, Ln/aB;->b:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()F
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Ln/aB;->b()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public c(Ln/aB;)F
    .registers 5
    .parameter

    .prologue
    .line 203
    iget v0, p0, Ln/aB;->a:F

    iget v1, p1, Ln/aB;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Ln/aB;->b:F

    iget v2, p1, Ln/aB;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public d()Ln/aB;
    .registers 2

    .prologue
    .line 241
    invoke-static {p0, p0}, Ln/aB;->b(Ln/aB;Ln/aB;)Ln/aB;

    move-result-object v0

    return-object v0
.end method

.method public d(Ln/aB;)Z
    .registers 5
    .parameter

    .prologue
    .line 268
    iget v0, p0, Ln/aB;->a:F

    iget v1, p1, Ln/aB;->b:F

    mul-float/2addr v0, v1

    iget v1, p1, Ln/aB;->a:F

    iget v2, p0, Ln/aB;->b:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public e()Ln/aB;
    .registers 2

    .prologue
    .line 259
    invoke-static {p0, p0}, Ln/aB;->c(Ln/aB;Ln/aB;)Ln/aB;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    if-ne p0, p1, :cond_5

    .line 280
    :cond_4
    :goto_4
    return v0

    .line 276
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 277
    goto :goto_4

    .line 279
    :cond_13
    check-cast p1, Ln/aB;

    .line 280
    iget v2, p0, Ln/aB;->a:F

    iget v3, p1, Ln/aB;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_25

    iget v2, p0, Ln/aB;->b:F

    iget v3, p1, Ln/aB;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Ln/aB;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Ln/aB;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/aB;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/aB;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
