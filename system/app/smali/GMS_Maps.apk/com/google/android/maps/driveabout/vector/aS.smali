.class Lcom/google/android/maps/driveabout/vector/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:F

.field final b:F

.field final c:I

.field final d:[I

.field private final e:I


# direct methods
.method public constructor <init>(FLn/ag;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    .line 170
    invoke-virtual {p2, p3}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    invoke-virtual {v1}, Ln/af;->c()F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/as;->b:F

    .line 171
    invoke-virtual {p2, p3}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    invoke-virtual {v1}, Ln/af;->b()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/as;->c:I

    .line 173
    invoke-virtual {p2}, Ln/ag;->d()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 174
    invoke-virtual {p2}, Ln/ag;->b()I

    move-result v1

    if-le v1, p3, :cond_3c

    .line 175
    invoke-virtual {p2, p3}, Ln/ag;->b(I)Ln/af;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ln/af;->d()[I

    move-result-object v1

    .line 177
    array-length v2, v1

    if-nez v2, :cond_3a

    :goto_31
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    .line 188
    :goto_33
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/as;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/as;->e:I

    .line 189
    return-void

    :cond_3a
    move-object v0, v1

    .line 177
    goto :goto_31

    .line 180
    :cond_3c
    const-string v1, "GLLineGroup"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid stroke index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  available strokes : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ln/ag;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    goto :goto_33

    .line 185
    :cond_65
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    goto :goto_33
.end method

.method private a()I
    .registers 3

    .prologue
    .line 238
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 239
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/as;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/as;->c:I

    add-int/2addr v0, v1

    .line 241
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_20
    add-int/2addr v0, v1

    .line 242
    return v0

    .line 241
    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 207
    if-ne p0, p1, :cond_5

    .line 229
    :cond_4
    :goto_4
    return v0

    .line 210
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 211
    goto :goto_4

    .line 214
    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/vector/as;

    .line 216
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/as;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/as;->c:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    .line 217
    goto :goto_4

    .line 219
    :cond_1d
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/as;->a:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_29

    move v0, v1

    .line 220
    goto :goto_4

    .line 222
    :cond_29
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/as;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/as;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_35

    move v0, v1

    .line 223
    goto :goto_4

    .line 225
    :cond_35
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 226
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/as;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/as;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/as;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/as;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/as;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
