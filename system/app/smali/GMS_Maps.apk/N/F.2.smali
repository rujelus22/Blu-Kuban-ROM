.class public Ln/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:F

.field private final e:Ljava/lang/String;

.field private final f:Ln/ag;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:F


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ln/ag;ILjava/lang/String;F)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput p1, p0, Ln/F;->a:I

    .line 282
    iput-object p2, p0, Ln/F;->b:Ljava/lang/String;

    .line 283
    iput p3, p0, Ln/F;->c:I

    .line 284
    const/high16 v0, 0x3f80

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Ln/F;->d:F

    .line 285
    iput-object p4, p0, Ln/F;->e:Ljava/lang/String;

    .line 286
    iput-object p5, p0, Ln/F;->f:Ln/ag;

    .line 287
    iput p6, p0, Ln/F;->g:I

    .line 288
    iput-object p7, p0, Ln/F;->h:Ljava/lang/String;

    .line 289
    iput p8, p0, Ln/F;->i:F

    .line 290
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILn/ah;[Ljava/lang/String;Ln/ag;Ljava/lang/String;Ljava/util/List;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 317
    const/4 v2, 0x0

    .line 318
    const/4 v3, 0x1

    .line 319
    invoke-static {v1}, Ln/F;->b(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 320
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 324
    :cond_18
    const/4 v4, 0x0

    .line 325
    invoke-static {v1}, Ln/F;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 327
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cL;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 331
    :cond_2b
    const/4 v5, 0x0

    .line 332
    const/4 v6, -0x1

    .line 333
    const/4 v0, 0x0

    .line 334
    invoke-static {v1}, Ln/F;->d(I)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 335
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 336
    invoke-virtual {p2, v5}, Ln/ah;->a(I)Ln/ag;

    move-result-object v5

    .line 337
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 338
    invoke-static {v6, p3}, Ln/L;->a(I[Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 339
    aget-object v0, p3, v6

    :cond_48
    move-object v7, v0

    .line 349
    :goto_49
    const/4 v8, 0x0

    .line 350
    invoke-static {v1}, Ln/F;->e(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 351
    invoke-static {p0}, Ln/aA;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {v0}, Ln/L;->a(I)F

    move-result v8

    .line 356
    :cond_58
    const/16 v0, 0x8

    invoke-static {v1, v0}, Ln/L;->a(II)Z

    move-result v0

    if-eqz v0, :cond_8a

    const/16 v0, 0x8

    if-eq v1, v0, :cond_8a

    .line 358
    new-instance v0, Ln/F;

    xor-int/lit8 v1, v1, 0x8

    invoke-direct/range {v0 .. v8}, Ln/F;-><init>(ILjava/lang/String;ILjava/lang/String;Ln/ag;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v0, Ln/F;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Ln/F;-><init>(ILjava/lang/String;ILjava/lang/String;Ln/ag;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_80
    return-void

    .line 341
    :cond_81
    invoke-static {v1}, Ln/F;->a(I)Z

    move-result v7

    if-eqz v7, :cond_93

    move-object v7, p5

    move-object v5, p4

    .line 345
    goto :goto_49

    .line 363
    :cond_8a
    new-instance v0, Ln/F;

    invoke-direct/range {v0 .. v8}, Ln/F;-><init>(ILjava/lang/String;ILjava/lang/String;Ln/ag;ILjava/lang/String;F)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_93
    move-object v7, v0

    goto :goto_49
.end method

.method private static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 395
    invoke-static {p0}, Ln/F;->c(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Ln/F;->b(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static b(I)Z
    .registers 2
    .parameter

    .prologue
    .line 403
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .registers 2
    .parameter

    .prologue
    .line 412
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static d(I)Z
    .registers 2
    .parameter

    .prologue
    .line 420
    const/4 v0, 0x4

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static e(I)Z
    .registers 2
    .parameter

    .prologue
    .line 428
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method

.method private static f(I)Z
    .registers 2
    .parameter

    .prologue
    .line 436
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ln/L;->a(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 390
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->a(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 416
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->d(I)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->e(I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 500
    if-ne p0, p1, :cond_6

    move v1, v0

    .line 544
    :cond_5
    :goto_5
    return v1

    .line 503
    :cond_6
    if-eqz p1, :cond_5

    .line 506
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 509
    check-cast p1, Ln/F;

    .line 510
    iget v2, p0, Ln/F;->a:I

    iget v3, p1, Ln/F;->a:I

    if-ne v2, v3, :cond_5

    .line 513
    iget v2, p0, Ln/F;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/F;->i:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 517
    iget-object v2, p0, Ln/F;->b:Ljava/lang/String;

    if-nez v2, :cond_5a

    .line 518
    iget-object v2, p1, Ln/F;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 524
    :cond_30
    iget-object v2, p0, Ln/F;->f:Ln/ag;

    if-nez v2, :cond_65

    .line 525
    iget-object v2, p1, Ln/F;->f:Ln/ag;

    if-nez v2, :cond_5

    .line 531
    :cond_38
    iget-object v2, p0, Ln/F;->h:Ljava/lang/String;

    if-nez v2, :cond_70

    .line 532
    iget-object v2, p1, Ln/F;->h:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 540
    :cond_40
    iget v2, p0, Ln/F;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Ln/F;->c:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 544
    iget-object v2, p0, Ln/F;->e:Ljava/lang/String;

    if-nez v2, :cond_7d

    iget-object v2, p1, Ln/F;->e:Ljava/lang/String;

    if-nez v2, :cond_7b

    :goto_58
    move v1, v0

    goto :goto_5

    .line 521
    :cond_5a
    iget-object v2, p0, Ln/F;->b:Ljava/lang/String;

    iget-object v3, p1, Ln/F;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_5

    .line 528
    :cond_65
    iget-object v2, p0, Ln/F;->f:Ln/ag;

    iget-object v3, p1, Ln/F;->f:Ln/ag;

    invoke-virtual {v2, v3}, Ln/ag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_5

    .line 535
    :cond_70
    iget-object v2, p0, Ln/F;->h:Ljava/lang/String;

    iget-object v3, p1, Ln/F;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    goto :goto_5

    :cond_7b
    move v0, v1

    .line 544
    goto :goto_58

    :cond_7d
    iget-object v0, p0, Ln/F;->e:Ljava/lang/String;

    iget-object v1, p1, Ln/F;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_58
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Ln/F;->a:I

    invoke-static {v0}, Ln/F;->f(I)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Ln/F;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()F
    .registers 2

    .prologue
    .line 455
    iget v0, p0, Ln/F;->d:F

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 486
    .line 488
    iget v0, p0, Ln/F;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 489
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/F;->i:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 490
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ln/F;->b:Ljava/lang/String;

    if-nez v0, :cond_38

    move v0, v1

    :goto_15
    add-int/2addr v0, v2

    .line 491
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ln/F;->f:Ln/ag;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_1d
    add-int/2addr v0, v2

    .line 492
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ln/F;->h:Ljava/lang/String;

    if-nez v0, :cond_46

    move v0, v1

    :goto_25
    add-int/2addr v0, v2

    .line 493
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Ln/F;->c:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 494
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln/F;->e:Ljava/lang/String;

    if-nez v2, :cond_4d

    :goto_36
    add-int/2addr v0, v1

    .line 495
    return v0

    .line 490
    :cond_38
    iget-object v0, p0, Ln/F;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_15

    .line 491
    :cond_3f
    iget-object v0, p0, Ln/F;->f:Ln/ag;

    invoke-virtual {v0}, Ln/ag;->hashCode()I

    move-result v0

    goto :goto_1d

    .line 492
    :cond_46
    iget-object v0, p0, Ln/F;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_25

    .line 494
    :cond_4d
    iget-object v1, p0, Ln/F;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_36
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Ln/F;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ln/ag;
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Ln/F;->f:Ln/ag;

    return-object v0
.end method

.method public k()F
    .registers 2

    .prologue
    .line 480
    iget v0, p0, Ln/F;->i:F

    return v0
.end method

.method public l()I
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, Ln/F;->b:Ljava/lang/String;

    invoke-static {v0}, Ln/L;->a(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    iget-object v1, p0, Ln/F;->e:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/F;->h:Ljava/lang/String;

    invoke-static {v1}, Ln/L;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ln/F;->f:Ln/ag;

    invoke-static {v1}, Ln/L;->a(Ln/ag;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
