.class public Lcom/google/android/maps/driveabout/vector/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/v;


# instance fields
.field private final a:Lt/L;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(Lt/L;FFFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/L;

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v1

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lt/L;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    const/high16 v0, 0x41a8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    return-void
.end method

.method public static a(F)F
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1c

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    const-wide v2, 0x3ff7154760000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4010

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_1b
    return v0

    :cond_1c
    const/high16 v0, 0x4200

    goto :goto_1b
.end method

.method private static a(FFF)F
    .registers 4

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static a(FFFF)F
    .registers 12

    const v0, 0x40490fdb

    mul-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/u;->b(F)F

    move-result v1

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/u;->b(F)F

    move-result v2

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p2

    mul-float/2addr v1, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    const-wide/high16 v2, 0x3fe0

    float-to-double v4, v0

    const-wide v6, 0x3ff3333333333333L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p3

    const-wide v6, 0x3fd999999999999aL

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v0, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x4320

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/u;->a(F)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/u;FF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 14

    const/high16 v6, 0x4334

    const/high16 v4, 0x3f80

    const/high16 v9, 0x43b4

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v0, v1, p2}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/u;->b:F

    invoke-static {v0, v2, p2}, Lcom/google/android/maps/driveabout/vector/u;->a(FFF)F

    move-result v2

    :goto_1b
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/u;->c:F

    invoke-static {v0, v3, p2}, Lcom/google/android/maps/driveabout/vector/u;->a(FFF)F

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/u;->d:F

    cmpl-float v5, v4, v0

    if-lez v5, :cond_6b

    sub-float v5, v4, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_32

    sub-float/2addr v4, v9

    :cond_32
    :goto_32
    invoke-static {v4, v0, p2}, Lcom/google/android/maps/driveabout/vector/u;->a(FFF)F

    move-result v4

    float-to-double v5, v4

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_3e

    add-float/2addr v4, v9

    :cond_3e
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    iget v5, p1, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-static {v0, v5, p2}, Lcom/google/android/maps/driveabout/vector/u;->a(FFF)F

    move-result v5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0

    :cond_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    const v2, 0x40490fdb

    sub-float v3, p2, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    add-float/2addr v2, v4

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/u;->b:F

    invoke-static {v0, v2, p2, p3}, Lcom/google/android/maps/driveabout/vector/u;->a(FFFF)F

    move-result v2

    goto :goto_1b

    :cond_6b
    sub-float v5, v0, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_32

    sub-float/2addr v0, v9

    goto :goto_32
.end method

.method public static b(F)F
    .registers 7

    const-wide/high16 v0, 0x4024

    const-wide/high16 v2, 0x4010

    float-to-double v4, p0

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff7154760000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method static b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/u;
    .registers 7

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    const-string v1, "vector.lat"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "vector.lng"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v1

    const-string v2, "vector.zoom"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "vector.viewing_angle"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string v4, "vector.bearing"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "vector.lookahead"

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;
    .registers 8

    const/high16 v3, 0x4000

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x2000

    if-le v0, v1, :cond_33

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    new-instance v1, Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    :goto_32
    return-object v0

    :cond_33
    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_57

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    new-instance v1, Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lt/L;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    goto :goto_32

    :cond_57
    move-object v0, p0

    goto :goto_32
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "vector.lat"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vector.lng"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v1}, Lt/L;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vector.viewing_angle"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.bearing"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.zoom"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "vector.lookahead"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public b()Lt/L;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-static {v0}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/u;
    .registers 1

    return-object p0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    return v0
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    return v0
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
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v2, :cond_37

    check-cast p1, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/u;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/u;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/u;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/u;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    move v0, v1

    goto :goto_4
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    :goto_2a
    add-int/2addr v0, v1

    return v0

    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v0}, Lt/L;->hashCode()I

    move-result v0

    goto :goto_2a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/u;->a:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/u;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
