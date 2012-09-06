.class LC/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/F;


# static fields
.field private static a:F

.field private static b:F

.field private static c:F

.field private static d:F

.field private static e:F

.field private static f:F

.field private static g:F

.field private static h:F

.field private static i:F


# instance fields
.field private final j:LaP/d;

.field private final k:Ljava/util/ArrayList;

.field private l:LC/h;


# direct methods
.method public constructor <init>(LaP/d;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LC/f;->k:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, LC/f;->l:LC/h;

    .line 118
    iput-object p1, p0, LC/f;->j:LaP/d;

    .line 119
    invoke-direct {p0}, LC/f;->a()V

    .line 120
    return-void
.end method

.method private static a(F)F
    .registers 3
    .parameter

    .prologue
    .line 693
    sget v0, LC/f;->g:F

    mul-float/2addr v0, p0

    .line 694
    sget v1, LC/f;->h:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_c

    .line 695
    sget v0, LC/f;->h:F

    .line 699
    :cond_b
    :goto_b
    return v0

    .line 696
    :cond_c
    sget v1, LC/f;->i:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    .line 697
    sget v0, LC/f;->i:F

    goto :goto_b
.end method

.method private static a(FJ)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 561
    long-to-float v0, p1

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 562
    sget v1, LC/f;->c:F

    mul-float/2addr v0, v1

    .line 563
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 564
    sget v1, LC/f;->d:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    sget v0, LC/f;->d:F

    :cond_13
    return v0
.end method

.method private a(LC/h;Ljava/util/ArrayList;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 489
    .line 490
    invoke-virtual {p1}, LC/h;->d()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    move v1, v0

    :goto_e
    if-ge v2, v3, :cond_25

    .line 494
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 495
    if-eq p1, v0, :cond_26

    invoke-virtual {v0}, LC/h;->d()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 496
    add-int/lit8 v0, v1, 0x1

    .line 493
    :goto_20
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_e

    .line 499
    :cond_25
    return v1

    :cond_26
    move v0, v1

    goto :goto_20

    :cond_28
    move v0, v1

    goto :goto_8
.end method

.method private a(LC/h;LC/R;)LC/h;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    invoke-direct {p0, p1, p2}, LC/f;->b(LC/h;LC/R;)Ljava/util/ArrayList;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 275
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 276
    invoke-virtual {p1}, LC/h;->h()LaP/a;

    move-result-object v1

    iget v1, v1, LaP/a;->b:F

    const/4 v6, 0x0

    cmpl-float v1, v1, v6

    if-eqz v1, :cond_2b

    iget-object v1, v0, LC/h;->b:LaP/t;

    iget-object v6, p1, LC/h;->b:LaP/t;

    invoke-virtual {v1, v6}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_2b
    move v1, v3

    .line 279
    :goto_2c
    invoke-virtual {v0, v1}, LC/h;->a(Z)V

    .line 280
    invoke-direct {p0, v0, p1}, LC/f;->a(LC/h;LC/h;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 281
    invoke-virtual {p1}, LC/h;->c()LC/j;

    move-result-object v1

    invoke-virtual {v0, v1}, LC/h;->a(LC/j;)V

    goto :goto_a

    :cond_3d
    move v1, v2

    .line 276
    goto :goto_2c

    .line 283
    :cond_3f
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 286
    :cond_43
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 288
    invoke-direct {p0, v4, p1}, LC/f;->a(Ljava/util/ArrayList;LC/h;)LC/h;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p1}, LC/h;->c(LC/h;)LC/i;

    .line 290
    invoke-virtual {v0}, LC/h;->e()LC/i;

    move-result-object v1

    sget-object v4, LC/i;->c:LC/i;

    if-ne v1, v4, :cond_66

    .line 291
    :goto_58
    if-eqz v3, :cond_68

    invoke-virtual {v0}, LC/h;->d()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 292
    sget-object v1, LC/j;->b:LC/j;

    invoke-virtual {v0, v1}, LC/h;->a(LC/j;)V

    .line 298
    :cond_65
    :goto_65
    return-object v0

    :cond_66
    move v3, v2

    .line 290
    goto :goto_58

    .line 293
    :cond_68
    if-nez v3, :cond_65

    invoke-virtual {v0}, LC/h;->d()Z

    move-result v1

    if-nez v1, :cond_65

    .line 294
    sget-object v1, LC/j;->c:LC/j;

    invoke-virtual {v0, v1}, LC/h;->a(LC/j;)V

    goto :goto_65

    .line 298
    :cond_76
    const/4 v0, 0x0

    goto :goto_65
.end method

.method private a(Ljava/util/ArrayList;LC/h;)LC/h;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 579
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_1c

    .line 580
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 581
    if-eqz v1, :cond_17

    invoke-direct {p0, v0, v1, p2}, LC/f;->a(LC/h;LC/h;LC/h;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 579
    :cond_17
    :goto_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_7

    .line 586
    :cond_1c
    if-eqz p2, :cond_2b

    invoke-virtual {v1, p2}, LC/h;->a(LC/h;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1, p2}, LC/h;->b(LC/h;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 590
    :goto_2a
    return-object p2

    :cond_2b
    move-object p2, v1

    goto :goto_2a

    :cond_2d
    move-object v0, v1

    goto :goto_17
.end method

.method private a(LaP/a;LaP/a;)LaP/a;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 396
    iget-object v0, p2, LaP/a;->a:LaP/t;

    iget-object v1, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 397
    iget-object v0, p0, LC/f;->j:LaP/d;

    sget v1, LC/f;->a:F

    neg-float v1, v1

    invoke-static {v0, p2, v1}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object p2

    .line 399
    :cond_13
    return-object p2
.end method

.method private a(LaP/t;LC/R;II)Ljava/util/ArrayList;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, LC/f;->j:LaP/d;

    invoke-virtual {v0, p1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v9

    .line 419
    invoke-virtual {v9}, LaP/h;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v10

    .line 423
    if-gez p4, :cond_14

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    .line 426
    :cond_14
    invoke-virtual {v9, p3}, LaP/h;->b(I)Lat/B;

    move-result-object v0

    move v3, p3

    move-object v2, v0

    .line 427
    :goto_1a
    if-ge v3, p4, :cond_9b

    .line 430
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v9, v0}, LaP/h;->b(I)Lat/B;

    move-result-object v8

    .line 444
    invoke-static {p2}, LF/g;->a(Landroid/location/Location;)Lat/B;

    move-result-object v4

    .line 445
    invoke-virtual {v2, v8}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 446
    invoke-virtual {v9}, LaP/h;->b()LaP/q;

    move-result-object v0

    sget-object v1, LaP/q;->e:LaP/q;

    if-ne v0, v1, :cond_4c

    .line 447
    invoke-static {v4, v2}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v5

    .line 448
    invoke-static {v5, v9, v3}, LC/f;->a(FLaP/h;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 449
    new-instance v0, LC/h;

    iget-object v1, p0, LC/f;->j:LaP/d;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, LC/h;-><init>(LaP/d;LaP/t;ILC/R;FFZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    move-object v2, v8

    goto :goto_1a

    .line 455
    :cond_50
    invoke-static {v4, v2, v8}, LF/g;->c(Lat/B;Lat/B;Lat/B;)F

    move-result v6

    .line 457
    invoke-static {v4, v2}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v0

    .line 458
    invoke-static {v4, v8}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v1

    .line 459
    invoke-static {v4, v2, v8}, LF/g;->b(Lat/B;Lat/B;Lat/B;)F

    move-result v5

    .line 462
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_90

    const/high16 v2, 0x3f80

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_90

    .line 470
    :goto_6b
    invoke-static {v5, v9, v3}, LC/f;->a(FLaP/h;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {v6}, LC/f;->b(F)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 472
    const/4 v0, 0x0

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_82

    const/high16 v0, 0x3f80

    cmpl-float v0, v6, v0

    if-lez v0, :cond_99

    :cond_82
    const/4 v7, 0x1

    .line 473
    :goto_83
    new-instance v0, LC/h;

    iget-object v1, p0, LC/f;->j:LaP/d;

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, LC/h;-><init>(LaP/d;LaP/t;ILC/R;FFZ)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 464
    :cond_90
    const/4 v2, 0x0

    cmpg-float v2, v6, v2

    if-gez v2, :cond_97

    move v5, v0

    .line 465
    goto :goto_6b

    :cond_97
    move v5, v1

    .line 467
    goto :goto_6b

    .line 472
    :cond_99
    const/4 v7, 0x0

    goto :goto_83

    .line 477
    :cond_9b
    return-object v10
.end method

.method private a()V
    .registers 4

    .prologue
    .line 123
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    .line 124
    iget v1, v0, LF/q;->e:F

    iget v2, v0, LF/q;->d:F

    add-float/2addr v1, v2

    sput v1, LC/f;->a:F

    .line 125
    iget v1, v0, LF/q;->A:F

    sput v1, LC/f;->b:F

    .line 126
    iget v1, v0, LF/q;->j:F

    sput v1, LC/f;->c:F

    .line 127
    iget v1, v0, LF/q;->k:F

    sput v1, LC/f;->d:F

    .line 128
    iget v1, v0, LF/q;->l:F

    sput v1, LC/f;->e:F

    .line 129
    iget v1, v0, LF/q;->m:F

    sput v1, LC/f;->f:F

    .line 130
    iget v1, v0, LF/q;->n:F

    sput v1, LC/f;->g:F

    .line 131
    iget v1, v0, LF/q;->o:F

    sput v1, LC/f;->h:F

    .line 132
    iget v0, v0, LF/q;->p:F

    sput v0, LC/f;->i:F

    .line 133
    return-void
.end method

.method private a(LC/h;)V
    .registers 4
    .parameter

    .prologue
    .line 514
    iget v0, p1, LC/h;->g:F

    sget v1, LC/f;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_e

    .line 515
    sget-object v0, LC/j;->a:LC/j;

    invoke-virtual {p1, v0}, LC/h;->a(LC/j;)V

    .line 525
    :goto_d
    return-void

    .line 518
    :cond_e
    iget-object v0, p0, LC/f;->j:LaP/d;

    iget-object v1, p1, LC/h;->b:LaP/t;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, LC/f;->c(LC/h;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 520
    :cond_22
    invoke-virtual {p1}, LC/h;->g()LaP/a;

    move-result-object v0

    invoke-virtual {p1, v0}, LC/h;->a(LaP/a;)V

    .line 521
    sget-object v0, LC/j;->c:LC/j;

    invoke-virtual {p1, v0}, LC/h;->a(LC/j;)V

    goto :goto_d

    .line 524
    :cond_2f
    sget-object v0, LC/j;->a:LC/j;

    invoke-virtual {p1, v0}, LC/h;->a(LC/j;)V

    goto :goto_d
.end method

.method private a(Ljava/util/ArrayList;LC/h;LaP/a;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 214
    if-eq v0, p2, :cond_4

    .line 215
    invoke-virtual {v0}, LC/h;->h()LaP/a;

    move-result-object v0

    .line 216
    iget-object v2, p0, LC/f;->j:LaP/d;

    invoke-static {v2, p3, v0}, LF/g;->a(LaP/d;LaP/a;LaP/a;)F

    move-result v0

    .line 217
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v2, LC/f;->a:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_4

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 222
    :cond_2a
    return-void
.end method

.method private static a(FLaP/h;I)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 682
    invoke-virtual {p1, p2}, LaP/h;->d(I)F

    move-result v0

    .line 683
    invoke-static {v0}, LC/f;->a(F)F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private a(LC/h;LC/h;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 537
    invoke-virtual {p1}, LC/h;->h()LaP/a;

    move-result-object v1

    .line 538
    invoke-virtual {p2}, LC/h;->h()LaP/a;

    move-result-object v2

    .line 540
    iget-object v1, v1, LaP/a;->a:LaP/t;

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v1, v2}, LaP/t;->a(LaP/t;)I

    move-result v1

    if-lez v1, :cond_17

    .line 541
    invoke-direct {p0, p1}, LC/f;->b(LC/h;)Z

    move-result v0

    .line 543
    :cond_17
    return v0
.end method

.method private a(LC/h;LC/h;LC/h;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 607
    invoke-virtual {p1}, LC/h;->c()LC/j;

    move-result-object v2

    invoke-virtual {p2}, LC/h;->c()LC/j;

    move-result-object v3

    invoke-virtual {v2, v3}, LC/j;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    .line 609
    if-lez v2, :cond_11

    .line 651
    :cond_10
    :goto_10
    return v0

    .line 611
    :cond_11
    if-gez v2, :cond_15

    move v0, v1

    .line 612
    goto :goto_10

    .line 615
    :cond_15
    invoke-virtual {p1}, LC/h;->h()LaP/a;

    move-result-object v2

    .line 616
    invoke-virtual {p2}, LC/h;->h()LaP/a;

    move-result-object v3

    .line 617
    if-eqz p3, :cond_3d

    .line 619
    invoke-virtual {p3}, LC/h;->h()LaP/a;

    move-result-object v4

    .line 620
    iget-object v5, v2, LaP/a;->a:LaP/t;

    iget-object v6, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v5, v6}, LaP/t;->a(LaP/t;)I

    move-result v5

    .line 621
    iget-object v6, v3, LaP/a;->a:LaP/t;

    iget-object v4, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v6, v4}, LaP/t;->a(LaP/t;)I

    move-result v4

    .line 622
    if-ltz v5, :cond_37

    if-ltz v4, :cond_10

    .line 624
    :cond_37
    if-gez v5, :cond_3d

    if-ltz v4, :cond_3d

    move v0, v1

    .line 625
    goto :goto_10

    .line 629
    :cond_3d
    invoke-direct {p0, p1, p2}, LC/f;->b(LC/h;LC/h;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 631
    invoke-direct {p0, p2, p1}, LC/f;->b(LC/h;LC/h;)Z

    move-result v4

    if-nez v4, :cond_76

    .line 633
    invoke-direct {p0, p1}, LC/f;->c(LC/h;)Z

    move-result v4

    if-nez v4, :cond_55

    invoke-direct {p0, p2}, LC/f;->c(LC/h;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 638
    :cond_55
    if-eqz p3, :cond_63

    invoke-virtual {p1, p3}, LC/h;->b(LC/h;)Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {p2, p3}, LC/h;->b(LC/h;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 646
    :cond_63
    invoke-virtual {v2, v3}, LaP/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 647
    invoke-virtual {p1, p2}, LC/h;->a(LC/h;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_10

    .line 649
    :cond_71
    invoke-virtual {p1, p2}, LC/h;->a(LC/h;)Z

    move-result v0

    goto :goto_10

    :cond_76
    move v0, v1

    .line 651
    goto :goto_10
.end method

.method private b(LaP/a;LaP/a;)LaP/a;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 404
    iget-object v0, p2, LaP/a;->a:LaP/t;

    iget-object v1, p1, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v1}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 405
    iget-object v0, p0, LC/f;->j:LaP/d;

    sget v1, LC/f;->a:F

    invoke-static {v0, p2, v1}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object p2

    .line 407
    :cond_12
    return-object p2
.end method

.method private b(LC/R;)Ljava/util/ArrayList;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 232
    iget-object v0, p0, LC/f;->l:LC/h;

    if-eqz v0, :cond_14

    .line 233
    iget-object v0, p0, LC/f;->l:LC/h;

    invoke-direct {p0, v0, p1}, LC/f;->a(LC/h;LC/R;)LC/h;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_14

    .line 235
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_14
    iget-object v0, p0, LC/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1b
    if-ge v2, v4, :cond_37

    .line 240
    iget-object v0, p0, LC/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 241
    iget-object v5, p0, LC/f;->l:LC/h;

    if-ne v0, v5, :cond_2d

    .line 239
    :cond_29
    :goto_29
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    .line 244
    :cond_2d
    invoke-direct {p0, v0, p1}, LC/f;->a(LC/h;LC/R;)LC/h;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_29

    .line 246
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 251
    :cond_37
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 252
    invoke-direct {p0, p1}, LC/f;->c(LC/R;)Ljava/util/ArrayList;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_45
    if-ge v1, v4, :cond_5f

    .line 254
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    .line 255
    invoke-direct {p0, v0}, LC/f;->a(LC/h;)V

    .line 256
    invoke-virtual {v0}, LC/h;->c()LC/j;

    move-result-object v5

    sget-object v6, LC/j;->a:LC/j;

    if-eq v5, v6, :cond_5b

    .line 257
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45

    .line 261
    :cond_5f
    return-object v3
.end method

.method private b(LC/h;LC/R;)Ljava/util/ArrayList;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, -0x1

    .line 327
    invoke-static {p2}, LF/g;->a(Landroid/location/Location;)Lat/B;

    move-result-object v0

    .line 329
    iget-object v2, p1, LC/h;->d:Lat/B;

    invoke-static {v0, v2}, LF/g;->a(Lat/B;Lat/B;)F

    move-result v0

    invoke-virtual {p2}, LC/R;->getTime()J

    move-result-wide v2

    iget-wide v4, p1, LC/h;->e:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, LC/f;->a(FJ)F

    move-result v0

    .line 331
    iget v2, p1, LC/h;->h:F

    add-float/2addr v0, v2

    invoke-virtual {p2}, LC/R;->getAccuracy()F

    move-result v2

    add-float/2addr v0, v2

    .line 333
    invoke-virtual {p1}, LC/h;->g()LaP/a;

    move-result-object v2

    .line 335
    iget-object v3, p0, LC/f;->j:LaP/d;

    neg-float v4, v0

    invoke-static {v3, v2, v4}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v3

    .line 336
    invoke-direct {p0, v2, v3}, LC/f;->a(LaP/a;LaP/a;)LaP/a;

    move-result-object v3

    .line 337
    iget-object v4, p0, LC/f;->j:LaP/d;

    invoke-static {v4, v2, v0}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v0

    .line 338
    invoke-direct {p0, v2, v0}, LC/f;->b(LaP/a;LaP/a;)LaP/a;

    move-result-object v4

    .line 341
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 342
    new-instance v0, LaP/v;

    iget-object v2, p0, LC/f;->j:LaP/d;

    invoke-direct {v0, v2}, LaP/v;-><init>(LaP/d;)V

    iget-object v2, v3, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, LaP/v;->b(LaP/t;)LaP/v;

    move-result-object v6

    .line 343
    :cond_49
    invoke-virtual {v6}, LaP/v;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 344
    invoke-virtual {v6}, LaP/v;->a()LaP/t;

    move-result-object v7

    .line 347
    invoke-virtual {p2}, LC/R;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, LC/f;->j:LaP/d;

    invoke-virtual {v0, v7}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    invoke-virtual {v0}, LaP/h;->c()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p2}, LC/R;->getSpeed()F

    move-result v0

    sget v2, LC/f;->b:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_49

    .line 353
    :cond_6f
    iget-object v0, v3, LaP/a;->a:LaP/t;

    invoke-virtual {v7, v0}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 354
    iget-object v0, p0, LC/f;->j:LaP/d;

    iget-object v2, v3, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    iget v2, v3, LaP/a;->b:F

    invoke-virtual {v0, v2}, LaP/h;->b(F)I

    move-result v0

    .line 359
    :goto_85
    iget-object v2, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v7, v2}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 360
    iget-object v2, p0, LC/f;->j:LaP/d;

    iget-object v8, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v2, v8}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    iget v8, v4, LaP/a;->b:F

    invoke-virtual {v2, v8}, LaP/h;->b(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 363
    :goto_9d
    invoke-direct {p0, v7, p2, v0, v2}, LC/f;->a(LaP/t;LC/R;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 367
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    iget-object v0, v3, LaP/a;->a:LaP/t;

    invoke-virtual {v7, v0}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 368
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    invoke-virtual {v0}, LC/h;->g()LaP/a;

    move-result-object v0

    .line 369
    invoke-virtual {v3, v0}, LaP/a;->a(LaP/a;)I

    move-result v0

    if-lez v0, :cond_c2

    .line 370
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 374
    :cond_c2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v7, v0}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 375
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 376
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/h;

    invoke-virtual {v0}, LC/h;->g()LaP/a;

    move-result-object v0

    .line 377
    invoke-virtual {v4, v0}, LaP/a;->a(LaP/a;)I

    move-result v0

    if-gez v0, :cond_e9

    .line 378
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 381
    :cond_e9
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    iget-object v0, v4, LaP/a;->a:LaP/t;

    invoke-virtual {v7, v0}, LaP/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 386
    :cond_f4
    return-object v5

    :cond_f5
    move v2, v1

    goto :goto_9d

    :cond_f7
    move v0, v1

    goto :goto_85
.end method

.method private b(Ljava/util/ArrayList;LC/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, LC/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 717
    iget-object v0, p0, LC/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 718
    iput-object p2, p0, LC/f;->l:LC/h;

    .line 719
    return-void
.end method

.method private static b(F)Z
    .registers 3
    .parameter

    .prologue
    .line 707
    sget v0, LC/f;->e:F

    neg-float v0, v0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f80

    sget v1, LC/f;->e:F

    add-float/2addr v0, v1

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private b(LC/h;)Z
    .registers 4
    .parameter

    .prologue
    .line 550
    iget v0, p1, LC/h;->g:F

    sget v1, LC/f;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(LC/h;LC/h;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 667
    iget v0, p1, LC/h;->f:F

    iget v1, p2, LC/h;->f:F

    sget v2, LC/f;->f:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private c(LC/R;)Ljava/util/ArrayList;
    .registers 8
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 306
    new-instance v0, LaP/v;

    iget-object v1, p0, LC/f;->j:LaP/d;

    invoke-direct {v0, v1}, LaP/v;-><init>(LaP/d;)V

    .line 307
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 308
    :cond_c
    :goto_c
    invoke-virtual {v0}, LaP/v;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 309
    invoke-virtual {v0}, LaP/v;->a()LaP/t;

    move-result-object v2

    .line 312
    invoke-virtual {p1}, LC/R;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, LC/f;->j:LaP/d;

    invoke-virtual {v3, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v3

    invoke-virtual {v3}, LaP/h;->c()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {p1}, LC/R;->getSpeed()F

    move-result v3

    sget v4, LC/f;->b:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_c

    .line 316
    :cond_32
    invoke-direct {p0, v2, p1, v5, v5}, LC/f;->a(LaP/t;LC/R;II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    .line 318
    :cond_3a
    return-object v1
.end method

.method private c(LC/h;)Z
    .registers 4
    .parameter

    .prologue
    .line 658
    iget-boolean v0, p1, LC/h;->i:Z

    if-eqz v0, :cond_e

    iget v0, p1, LC/h;->g:F

    sget v1, LC/f;->a:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public a(LC/R;)LC/G;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1}, LC/R;->getLatitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_31

    invoke-virtual {p1}, LC/R;->getLongitude()D

    move-result-wide v3

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_31

    move v0, v1

    :goto_15
    const-string v3, "Location should have both latitude and longitude"

    invoke-static {v0, v3}, Lcom/google/common/base/P;->a(ZLjava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1}, LC/f;->b(LC/R;)Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 148
    sget-object v0, LC/H;->b:LC/H;

    move-object v1, v0

    move-object v0, v2

    .line 193
    :goto_28
    invoke-direct {p0, v4, v2}, LC/f;->b(Ljava/util/ArrayList;LC/h;)V

    .line 194
    new-instance v2, LC/G;

    invoke-direct {v2, v1, v0}, LC/G;-><init>(LC/H;LaP/a;)V

    return-object v2

    .line 137
    :cond_31
    const/4 v0, 0x0

    goto :goto_15

    .line 150
    :cond_33
    iget-object v0, p0, LC/f;->l:LC/h;

    invoke-direct {p0, v4, v0}, LC/f;->a(Ljava/util/ArrayList;LC/h;)LC/h;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, LC/h;->h()LaP/a;

    move-result-object v0

    .line 152
    invoke-direct {p0, v4, v3, v0}, LC/f;->a(Ljava/util/ArrayList;LC/h;LaP/a;)V

    .line 163
    sget-object v5, LC/g;->a:[I

    invoke-virtual {v3}, LC/h;->c()LC/j;

    move-result-object v6

    invoke-virtual {v6}, LC/j;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_6a

    .line 189
    sget-object v0, LC/H;->b:LC/H;

    move-object v1, v0

    move-object v0, v2

    goto :goto_28

    .line 165
    :pswitch_54
    sget-object v1, LC/H;->e:LC/H;

    move-object v2, v3

    .line 166
    goto :goto_28

    .line 171
    :pswitch_58
    invoke-direct {p0, v3, v4}, LC/f;->a(LC/h;Ljava/util/ArrayList;)I

    move-result v5

    .line 173
    if-ne v5, v1, :cond_67

    .line 174
    sget-object v1, LC/H;->e:LC/H;

    .line 175
    sget-object v2, LC/j;->d:LC/j;

    invoke-virtual {v3, v2}, LC/h;->a(LC/j;)V

    move-object v2, v3

    goto :goto_28

    .line 181
    :cond_67
    sget-object v1, LC/H;->c:LC/H;

    goto :goto_28

    .line 163
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_54
        :pswitch_58
    .end packed-switch
.end method
