.class public Lcom/google/android/maps/driveabout/vector/ac;
.super Lcom/google/android/maps/driveabout/vector/aG;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bR;
.implements Lcom/google/android/maps/driveabout/vector/d;


# instance fields
.field private final s:Ln/R;

.field private t:Z


# direct methods
.method constructor <init>(Ln/R;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct/range {p0 .. p13}, Lcom/google/android/maps/driveabout/vector/aG;-><init>(Ln/l;Lcom/google/android/maps/driveabout/vector/bY;Ljava/lang/String;Ln/a;Ln/a;FFZZLcom/google/android/maps/driveabout/vector/af;Lcom/google/android/maps/driveabout/vector/af;[Lcom/google/android/maps/driveabout/vector/aJ;Z)V

    .line 42
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ac;->s:Ln/R;

    .line 43
    return-void
.end method


# virtual methods
.method public a(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    .line 144
    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    .line 145
    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 96
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ac;->k:Ln/a;

    invoke-virtual {v2}, Ln/a;->b()Ln/Q;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v2

    .line 97
    aget v3, v2, v1

    int-to-float v3, v3

    .line 98
    aget v2, v2, v0

    int-to-float v2, v2

    .line 99
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ac;->o:F

    add-float/2addr v4, v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3a

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ac;->p:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3a

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ac;->q:F

    add-float/2addr v3, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ac;->r:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_3a

    :goto_39
    return v0

    :cond_3a
    move v0, v1

    goto :goto_39
.end method

.method public d()V
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->t:Z

    .line 67
    return-void
.end method

.method public e()Ln/Q;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->k:Ln/a;

    invoke-virtual {v0}, Ln/a;->b()Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public f()Ln/B;
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()I
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->s:Ln/R;

    invoke-virtual {v0}, Ln/R;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public m()Ln/R;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->s:Ln/R;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    const-string v0, "s"

    return-object v0
.end method

.method public r_()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->t:Z

    .line 62
    return-void
.end method

.method public s_()I
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ac;->l:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 108
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->m:Lcom/google/android/maps/driveabout/vector/af;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->n:Lcom/google/android/maps/driveabout/vector/aJ;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/aJ;->a:Lcom/google/android/maps/driveabout/vector/aI;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aI;->b:Lcom/google/android/maps/driveabout/vector/aI;

    if-ne v1, v2, :cond_1c

    .line 110
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ac;->m:Lcom/google/android/maps/driveabout/vector/af;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/af;->b()F

    move-result v1

    add-float/2addr v0, v1

    .line 112
    :cond_1c
    float-to-int v0, v0

    return v0
.end method
