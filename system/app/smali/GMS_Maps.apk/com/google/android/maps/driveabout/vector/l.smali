.class public Lcom/google/android/maps/driveabout/vector/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/m;


# instance fields
.field private final a:Ln/Q;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F


# direct methods
.method public constructor <init>(Ln/Q;FFFF)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ln/Q;

    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v1

    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ln/Q;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    .line 96
    const/high16 v0, 0x41a8

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    .line 97
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    .line 98
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    .line 99
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    .line 100
    return-void
.end method

.method public static a(F)F
    .registers 5
    .parameter

    .prologue
    .line 345
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 292
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private static a(FFFF)F
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 321
    const v0, 0x40490fdb

    mul-float/2addr v0, p2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    .line 322
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/l;->b(F)F

    move-result v1

    .line 323
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/l;->b(F)F

    move-result v2

    .line 327
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

    .line 329
    const/high16 v1, 0x4320

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 330
    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/l;->a(F)F

    move-result v0

    .line 331
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 332
    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/l;FF)Lcom/google/android/maps/driveabout/vector/l;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4334

    const/high16 v4, 0x3f80

    const/high16 v9, 0x43b4

    .line 253
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_4c

    .line 254
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v0, v1, p2}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v1

    .line 255
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/l;->b:F

    invoke-static {v0, v2, p2}, Lcom/google/android/maps/driveabout/vector/l;->a(FFF)F

    move-result v2

    .line 265
    :goto_1b
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/l;->c:F

    invoke-static {v0, v3, p2}, Lcom/google/android/maps/driveabout/vector/l;->a(FFF)F

    move-result v3

    .line 270
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    .line 271
    iget v0, p1, Lcom/google/android/maps/driveabout/vector/l;->d:F

    .line 272
    cmpl-float v5, v4, v0

    if-lez v5, :cond_6b

    .line 273
    sub-float v5, v4, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_32

    .line 274
    sub-float/2addr v4, v9

    .line 281
    :cond_32
    :goto_32
    invoke-static {v4, v0, p2}, Lcom/google/android/maps/driveabout/vector/l;->a(FFF)F

    move-result v4

    .line 282
    float-to-double v5, v4

    const-wide/16 v7, 0x0

    cmpg-double v0, v5, v7

    if-gez v0, :cond_3e

    .line 283
    add-float/2addr v4, v9

    .line 286
    :cond_3e
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    iget v5, p1, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-static {v0, v5, p2}, Lcom/google/android/maps/driveabout/vector/l;->a(FFF)F

    move-result v5

    .line 288
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0

    .line 260
    :cond_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    const v2, 0x40490fdb

    sub-float v3, p2, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    add-float/2addr v2, v4

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v1

    .line 262
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/l;->b:F

    invoke-static {v0, v2, p2, p3}, Lcom/google/android/maps/driveabout/vector/l;->a(FFFF)F

    move-result v2

    goto :goto_1b

    .line 277
    :cond_6b
    sub-float v5, v0, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_32

    .line 278
    sub-float/2addr v0, v9

    goto :goto_32
.end method

.method public static b(F)F
    .registers 7
    .parameter

    .prologue
    .line 356
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

.method static b(Landroid/os/Bundle;)Lcom/google/android/maps/driveabout/vector/l;
    .registers 7
    .parameter

    .prologue
    .line 226
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    const-string v1, "vector.lat"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "vector.lng"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ln/Q;->b(II)Ln/Q;

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

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;)Lcom/google/android/maps/driveabout/vector/l;
    .registers 8
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->f()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v1

    sub-int/2addr v0, v1

    .line 193
    const/high16 v1, 0x2000

    if-le v0, v1, :cond_33

    .line 194
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    new-instance v1, Ln/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 200
    :goto_32
    return-object v0

    .line 196
    :cond_33
    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_57

    .line 197
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    new-instance v1, Ln/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ln/Q;-><init>(II)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    goto :goto_32

    :cond_57
    move-object v0, p0

    .line 200
    goto :goto_32
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 210
    const-string v0, "vector.lat"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 211
    const-string v0, "vector.lng"

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v0, "vector.viewing_angle"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 213
    const-string v0, "vector.bearing"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 214
    const-string v0, "vector.zoom"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 215
    const-string v0, "vector.lookahead"

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 216
    return-void
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-static {v0}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 1

    .prologue
    .line 368
    return-object p0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    return v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    if-ne p0, p1, :cond_5

    .line 126
    :cond_4
    :goto_4
    return v0

    .line 118
    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/vector/l;

    if-eqz v2, :cond_37

    .line 119
    check-cast p1, Lcom/google/android/maps/driveabout/vector/l;

    .line 120
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/l;->b:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/l;->c:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/l;->d:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/l;->e:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    :cond_35
    move v0, v1

    goto :goto_4

    :cond_37
    move v0, v1

    .line 126
    goto :goto_4
.end method

.method public f()F
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 131
    .line 133
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x25

    .line 134
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    :goto_2a
    add-int/2addr v0, v1

    .line 138
    return v0

    .line 137
    :cond_2c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->hashCode()I

    move-result v0

    goto :goto_2a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/l;->a:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " viewingAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bearing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lookAhead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/l;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
