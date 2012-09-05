.class Lcom/google/android/maps/driveabout/vector/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/an;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cs;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lt/Z;

.field private final e:Lcom/google/android/maps/driveabout/vector/cu;

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V
    .registers 13

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/cs;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/am;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/am;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/am;->d:Lt/Z;

    const/high16 v5, 0x3f80

    invoke-virtual {p4}, Lt/Z;->b()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p4}, Lt/Z;->i()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p4}, Lt/Z;->l()Lt/ac;

    move-result-object v0

    invoke-virtual {v0}, Lt/ac;->a()I

    move-result v0

    :goto_23
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    invoke-virtual {p4}, Lt/Z;->h()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p4}, Lt/Z;->k()Lt/ad;

    move-result-object v0

    invoke-virtual {v0}, Lt/ad;->d()F

    move-result v5

    :cond_33
    :goto_33
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/am;->e:Lcom/google/android/maps/driveabout/vector/cu;

    int-to-float v3, p3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZF)[F

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cs;->b:Lcom/google/android/maps/driveabout/vector/cu;

    if-ne p5, v1, :cond_6a

    aget v1, v0, v6

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/am;->f:F

    :goto_49
    aget v1, v0, v4

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/am;->g:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/am;->h:F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/am;->i:F

    return-void

    :cond_58
    move v0, v6

    goto :goto_23

    :cond_5a
    invoke-virtual {p4}, Lt/Z;->d()I

    move-result v0

    if-lez v0, :cond_67

    invoke-virtual {p4, v6}, Lt/Z;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    goto :goto_33

    :cond_67
    iput v6, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    goto :goto_33

    :cond_6a
    aget v1, v0, v6

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/am;->f:F

    goto :goto_49
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->f:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/am;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/am;->e:Lcom/google/android/maps/driveabout/vector/cu;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/am;->c:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/am;->d:Lt/Z;

    invoke-static {v4, p1}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/am;->d:Lt/Z;

    invoke-static {v5, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v5

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Lcom/google/android/maps/driveabout/vector/cw;
    .registers 11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/am;->d:Lt/Z;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/af;->b(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/am;->d:Lt/Z;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v5

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    if-eqz v0, :cond_1f

    const/4 v6, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_19

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_1f

    :cond_19
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/af;->b(I)I

    move-result v5

    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/am;->a:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/am;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/am;->e:Lcom/google/android/maps/driveabout/vector/cu;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/am;->c:I

    int-to-float v4, v1

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/am;->j:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    return-object v0
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->g:F

    return v0
.end method

.method public c()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->h:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->i:F

    return v0
.end method

.method public e()F
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/am;->g:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/am;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/am;->i:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()V
    .registers 1

    return-void
.end method
