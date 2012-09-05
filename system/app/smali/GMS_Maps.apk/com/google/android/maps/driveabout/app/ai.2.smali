.class Lcom/google/android/maps/driveabout/app/ai;
.super Ljava/lang/Object;


# instance fields
.field final a:Lt/o;

.field final b:Lu/Q;

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lu/P;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lu/P;->c()Lt/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    invoke-virtual {p1}, Lu/P;->d()Lu/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    invoke-virtual {p1}, Lu/P;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/ai;)Z
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    if-eqz v1, :cond_14

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_14
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    invoke-static {v1}, Lt/L;->a(Lt/o;)Lt/L;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    invoke-static {v2}, Lt/L;->a(Lt/o;)Lt/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1}, Lt/L;->e()D

    move-result-wide v4

    div-double v1, v2, v4

    const-wide/high16 v3, 0x4069

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
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
    check-cast p1, Lcom/google/android/maps/driveabout/app/ai;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    invoke-virtual {v2, v3}, Lt/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    if-nez v2, :cond_2b

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    if-eqz v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_2b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    invoke-virtual {v2, v3}, Lu/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    move v0, v1

    goto :goto_4

    :cond_37
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_41
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lt/o;

    invoke-virtual {v0}, Lt/o;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    if-nez v0, :cond_17

    move v0, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    if-nez v2, :cond_1e

    :goto_15
    add-int/2addr v0, v1

    return v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->b:Lu/Q;

    invoke-virtual {v0}, Lu/Q;->hashCode()I

    move-result v0

    goto :goto_e

    :cond_1e
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ai;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_15
.end method
