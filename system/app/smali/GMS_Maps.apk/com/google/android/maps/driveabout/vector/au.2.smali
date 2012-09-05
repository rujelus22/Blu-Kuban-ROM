.class Lcom/google/android/maps/driveabout/vector/au;
.super Ljava/lang/Object;


# instance fields
.field final a:F

.field final b:F

.field final c:I

.field final d:[I

.field private final e:I


# direct methods
.method public constructor <init>(FLt/Z;I)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-virtual {p2, p3}, Lt/Z;->b(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    invoke-virtual {p2, p3}, Lt/Z;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    invoke-virtual {p2}, Lt/Z;->g()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p2}, Lt/Z;->j()I

    move-result v1

    if-le v1, p3, :cond_34

    invoke-virtual {p2, p3}, Lt/Z;->d(I)Lt/Y;

    move-result-object v1

    invoke-virtual {v1}, Lt/Y;->c()[I

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_32

    :goto_29
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    :goto_2b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/au;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/au;->e:I

    return-void

    :cond_32
    move-object v0, v1

    goto :goto_29

    :cond_34
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

    invoke-virtual {p2}, Lt/Z;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    goto :goto_2b

    :cond_5d
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    goto :goto_2b
.end method

.method private a()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    :goto_20
    add-int/2addr v0, v1

    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/google/android/maps/driveabout/vector/au;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    iget v3, p1, Lcom/google/android/maps/driveabout/vector/au;->c:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/au;->a:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget v2, p1, Lcom/google/android/maps/driveabout/vector/au;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/au;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/au;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/au;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
