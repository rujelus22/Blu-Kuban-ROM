.class public final Lt/ak;
.super Ljava/lang/Object;


# instance fields
.field a:F

.field b:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v0}, Lt/ak;->a(FF)Lt/ak;

    return-void
.end method

.method public static a(Lt/L;Lt/ak;Lt/L;)Lt/L;
    .registers 6

    iget v0, p0, Lt/L;->a:I

    iget v1, p1, Lt/ak;->a:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lt/L;->b:I

    iget v2, p1, Lt/ak;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Lt/L;->d(II)V

    return-object p2
.end method

.method public static a(Lt/ak;FLt/ak;)Lt/ak;
    .registers 4

    iget v0, p0, Lt/ak;->a:F

    mul-float/2addr v0, p1

    iput v0, p2, Lt/ak;->a:F

    iget v0, p0, Lt/ak;->b:F

    mul-float/2addr v0, p1

    iput v0, p2, Lt/ak;->b:F

    return-object p2
.end method

.method public static a(Lt/ak;Lt/ak;)Lt/ak;
    .registers 3

    iget v0, p0, Lt/ak;->a:F

    neg-float v0, v0

    iput v0, p1, Lt/ak;->a:F

    iget v0, p0, Lt/ak;->b:F

    neg-float v0, v0

    iput v0, p1, Lt/ak;->b:F

    return-object p1
.end method

.method public static a(Lt/ak;Lt/ak;Lt/ak;)Lt/ak;
    .registers 5

    iget v0, p0, Lt/ak;->a:F

    iget v1, p1, Lt/ak;->a:F

    add-float/2addr v0, v1

    iput v0, p2, Lt/ak;->a:F

    iget v0, p0, Lt/ak;->b:F

    iget v1, p1, Lt/ak;->b:F

    add-float/2addr v0, v1

    iput v0, p2, Lt/ak;->b:F

    return-object p2
.end method

.method public static b(Lt/ak;Lt/ak;)Lt/ak;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/ak;->c()F

    move-result v0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_e

    iput v2, p1, Lt/ak;->a:F

    iput v2, p1, Lt/ak;->b:F

    :goto_d
    return-object p1

    :cond_e
    iget v1, p0, Lt/ak;->a:F

    div-float/2addr v1, v0

    iput v1, p1, Lt/ak;->a:F

    iget v1, p0, Lt/ak;->b:F

    div-float v0, v1, v0

    iput v0, p1, Lt/ak;->b:F

    goto :goto_d
.end method

.method public static c(Lt/ak;Lt/ak;)Lt/ak;
    .registers 4

    iget v0, p0, Lt/ak;->a:F

    iget v1, p0, Lt/ak;->b:F

    neg-float v1, v1

    iput v1, p1, Lt/ak;->a:F

    iput v0, p1, Lt/ak;->b:F

    return-object p1
.end method


# virtual methods
.method public a()Lt/ak;
    .registers 2

    invoke-static {p0, p0}, Lt/ak;->a(Lt/ak;Lt/ak;)Lt/ak;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lt/ak;
    .registers 3

    invoke-static {p0, p1, p0}, Lt/ak;->a(Lt/ak;FLt/ak;)Lt/ak;

    move-result-object v0

    return-object v0
.end method

.method public a(FF)Lt/ak;
    .registers 3

    iput p1, p0, Lt/ak;->a:F

    iput p2, p0, Lt/ak;->b:F

    return-object p0
.end method

.method public a(Lt/L;Lt/L;)Lt/ak;
    .registers 5

    iget v0, p2, Lt/L;->a:I

    iget v1, p1, Lt/L;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lt/ak;->a:F

    iget v0, p2, Lt/L;->b:I

    iget v1, p1, Lt/L;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lt/ak;->b:F

    return-object p0
.end method

.method public a(Lt/ak;)Lt/ak;
    .registers 3

    iget v0, p1, Lt/ak;->a:F

    iput v0, p0, Lt/ak;->a:F

    iget v0, p1, Lt/ak;->b:F

    iput v0, p0, Lt/ak;->b:F

    return-object p0
.end method

.method public b()F
    .registers 2

    invoke-virtual {p0, p0}, Lt/ak;->c(Lt/ak;)F

    move-result v0

    return v0
.end method

.method public b(Lt/ak;)Lt/ak;
    .registers 2

    invoke-static {p0, p1, p0}, Lt/ak;->a(Lt/ak;Lt/ak;Lt/ak;)Lt/ak;

    return-object p0
.end method

.method public b(FF)Z
    .registers 4

    iget v0, p0, Lt/ak;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_e

    iget v0, p0, Lt/ak;->b:F

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

    invoke-virtual {p0}, Lt/ak;->b()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public c(Lt/ak;)F
    .registers 5

    iget v0, p0, Lt/ak;->a:F

    iget v1, p1, Lt/ak;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lt/ak;->b:F

    iget v2, p1, Lt/ak;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public d()Lt/ak;
    .registers 2

    invoke-static {p0, p0}, Lt/ak;->b(Lt/ak;Lt/ak;)Lt/ak;

    move-result-object v0

    return-object v0
.end method

.method public d(Lt/ak;)Z
    .registers 5

    iget v0, p0, Lt/ak;->a:F

    iget v1, p1, Lt/ak;->b:F

    mul-float/2addr v0, v1

    iget v1, p1, Lt/ak;->a:F

    iget v2, p0, Lt/ak;->b:F

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

.method public e()Lt/ak;
    .registers 2

    invoke-static {p0, p0}, Lt/ak;->c(Lt/ak;Lt/ak;)Lt/ak;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lt/ak;

    iget v2, p0, Lt/ak;->a:F

    iget v3, p1, Lt/ak;->a:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_25

    iget v2, p0, Lt/ak;->b:F

    iget v3, p1, Lt/ak;->b:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_25
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lt/ak;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lt/ak;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/ak;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/ak;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
