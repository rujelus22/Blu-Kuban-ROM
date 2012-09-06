.class Lcom/google/android/maps/driveabout/vector/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/al;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cR;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ln/ag;

.field private final e:Lcom/google/android/maps/driveabout/vector/cT;

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cR;Ljava/lang/String;ILn/ag;Lcom/google/android/maps/driveabout/vector/cT;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ak;->a:Lcom/google/android/maps/driveabout/vector/cR;

    .line 472
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ak;->b:Ljava/lang/String;

    .line 473
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ak;->c:I

    .line 474
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    .line 475
    const/high16 v6, 0x3f80

    .line 476
    invoke-virtual {p4}, Ln/ag;->f()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p4}, Ln/ag;->i()Ln/aj;

    move-result-object v0

    invoke-virtual {v0}, Ln/aj;->b()I

    move-result v0

    :goto_1d
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    .line 480
    invoke-virtual {p4}, Ln/ag;->e()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 481
    invoke-virtual {p4}, Ln/ag;->h()Ln/ak;

    move-result-object v0

    invoke-virtual {v0}, Ln/ak;->g()F

    move-result v6

    .line 483
    :cond_2d
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/ak;->e:Lcom/google/android/maps/driveabout/vector/cT;

    .line 484
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-virtual {v0}, Ln/ag;->h()Ln/ak;

    move-result-object v3

    :goto_39
    int-to-float v4, p3

    move-object v0, p1

    move-object v1, p2

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZF)[F

    move-result-object v0

    .line 486
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cR;->c:Lcom/google/android/maps/driveabout/vector/cT;

    if-ne p5, v1, :cond_60

    .line 489
    aget v1, v0, v7

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->f:F

    .line 493
    :goto_4d
    aget v1, v0, v5

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->g:F

    .line 494
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->h:F

    .line 495
    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->i:F

    .line 496
    return-void

    :cond_5c
    move v0, v7

    .line 476
    goto :goto_1d

    .line 484
    :cond_5e
    const/4 v3, 0x0

    goto :goto_39

    .line 491
    :cond_60
    aget v1, v0, v7

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->f:F

    goto :goto_4d
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 499
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->f:F

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 10
    .parameter

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->a:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ak;->e:Lcom/google/android/maps/driveabout/vector/cT;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-virtual {v3}, Ln/ag;->h()Ln/ak;

    move-result-object v3

    :goto_10
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ak;->c:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-static {v5, p1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v5

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-static {v6, p1}, Lcom/google/android/maps/driveabout/vector/ad;->b(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v6

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v3, 0x0

    goto :goto_10
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/ad;->b(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v7

    .line 530
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/ad;->a(Ln/ag;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v6

    .line 531
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    if-eqz v0, :cond_1f

    .line 532
    const/4 v7, 0x0

    .line 537
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v0, :cond_19

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_1f

    .line 538
    :cond_19
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ad;->c(I)I

    move-result v6

    .line 541
    :cond_1f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->a:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ak;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ak;->e:Lcom/google/android/maps/driveabout/vector/cT;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->d:Ln/ag;

    invoke-virtual {v1}, Ln/ag;->h()Ln/ak;

    move-result-object v4

    :goto_2f
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->c:I

    int-to-float v5, v1

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    return-object v0

    :cond_3a
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public b()F
    .registers 2

    .prologue
    .line 501
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->g:F

    return v0
.end method

.method public c()F
    .registers 2

    .prologue
    .line 504
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->h:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->i:F

    return v0
.end method

.method public e()F
    .registers 3

    .prologue
    .line 521
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ak;->g:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ak;->i:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()V
    .registers 1

    .prologue
    .line 560
    return-void
.end method
