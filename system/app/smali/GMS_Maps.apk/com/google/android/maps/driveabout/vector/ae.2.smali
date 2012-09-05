.class public Lcom/google/android/maps/driveabout/vector/ae;
.super Lcom/google/android/maps/driveabout/vector/aH;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bC;
.implements Lcom/google/android/maps/driveabout/vector/m;


# instance fields
.field private final q:Lt/M;

.field private r:Z


# direct methods
.method constructor <init>(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V
    .registers 13

    invoke-direct/range {p0 .. p12}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Lt/M;

    return-void
.end method


# virtual methods
.method public a(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lt/a;

    invoke-virtual {v2}, Lt/a;->b()Lt/L;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    aget v3, v2, v1

    int-to-float v3, v3

    aget v2, v2, v0

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->m:F

    add-float/2addr v4, v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3a

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->n:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3a

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->o:F

    add-float/2addr v3, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->p:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_3a

    :goto_39
    return v0

    :cond_3a
    move v0, v1

    goto :goto_39
.end method

.method public d()Lt/L;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public e()Lt/y;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    if-ne v1, v2, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v1

    add-float/2addr v0, v1

    :cond_1c
    float-to-int v0, v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Lt/M;

    invoke-virtual {v0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public l()Lt/M;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Lt/M;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    const-string v0, "s"

    return-object v0
.end method

.method public o_()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->r:Z

    return-void
.end method

.method public p_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->r:Z

    return-void
.end method

.method public q_()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
