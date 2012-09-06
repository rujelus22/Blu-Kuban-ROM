.class public LaM/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lad/w;Ljava/util/Vector;Ljava/util/Vector;IZ)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 548
    .line 549
    invoke-virtual {p0, p3}, Lad/w;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 551
    invoke-virtual {p0, v0}, Lad/w;->a(Lad/m;)Ljava/lang/String;

    move-result-object v4

    .line 552
    if-eqz v4, :cond_48

    .line 553
    const/4 v2, 0x1

    .line 554
    if-eqz p4, :cond_45

    sget-object v1, Lcom/google/googlenav/ui/aV;->i:Lcom/google/googlenav/ui/aV;

    .line 556
    :goto_12
    invoke-static {v4, v1}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v1, v2

    .line 558
    :goto_1a
    invoke-static {p0, v0, v3}, LaM/G;->a(Lad/b;Lad/m;Z)LaM/H;

    move-result-object v0

    .line 561
    invoke-virtual {v0}, LaM/H;->a()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 562
    iget-object v2, v0, LaM/H;->a:Ljava/lang/String;

    invoke-static {p4}, LaM/G;->a(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 565
    :cond_31
    invoke-virtual {v0}, LaM/H;->b()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 566
    iget-object v0, v0, LaM/H;->c:Ljava/lang/String;

    invoke-static {p4}, LaM/G;->b(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 569
    :cond_44
    return v1

    .line 554
    :cond_45
    sget-object v1, Lcom/google/googlenav/ui/aV;->F:Lcom/google/googlenav/ui/aV;

    goto :goto_12

    :cond_48
    move v1, v3

    goto :goto_1a
.end method

.method private static a(Lad/b;IZ)LaM/H;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 599
    new-instance v1, LaM/H;

    invoke-direct {v1}, LaM/H;-><init>()V

    .line 600
    invoke-virtual {p0, p1}, Lad/b;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    .line 602
    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v2

    .line 603
    if-nez v2, :cond_13

    move-object v0, v1

    .line 619
    :goto_12
    return-object v0

    .line 607
    :cond_13
    invoke-virtual {v0}, Lad/m;->s()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 608
    invoke-virtual {v2}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaM/H;->a:Ljava/lang/String;

    .line 618
    :cond_1f
    :goto_1f
    invoke-virtual {v2}, Lad/t;->F()[Lad/n;

    move-result-object v0

    iput-object v0, v1, LaM/H;->b:[Lad/n;

    move-object v0, v1

    .line 619
    goto :goto_12

    .line 610
    :cond_27
    invoke-virtual {v2}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaM/H;->a:Ljava/lang/String;

    .line 612
    invoke-virtual {v2}, Lad/t;->t()I

    move-result v0

    if-lez v0, :cond_1f

    if-nez p2, :cond_1f

    .line 613
    invoke-virtual {p0}, Lad/b;->av()I

    move-result v0

    .line 614
    invoke-virtual {v2}, Lad/t;->t()I

    move-result v3

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, LaM/H;->c:Ljava/lang/String;

    goto :goto_1f
.end method

.method private static a(Lad/b;Lad/m;)LaM/H;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    invoke-virtual {p1}, Lad/m;->o()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 246
    invoke-virtual {v0}, Lad/t;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Lad/t;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 248
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    const/16 v2, 0xed

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lad/t;->s()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_3d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    invoke-static {v0}, LaM/G;->b(Lad/t;)Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 255
    const/16 v2, 0x591

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_5f
    :goto_5f
    new-instance v0, LaM/H;

    invoke-direct {v0}, LaM/H;-><init>()V

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaM/H;->a:Ljava/lang/String;

    .line 283
    return-object v0

    .line 259
    :cond_6b
    const/16 v3, 0x592

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v0}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 263
    :cond_83
    invoke-virtual {p1}, Lad/m;->p()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 264
    invoke-static {v0}, LaM/G;->a(Lad/t;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    .line 266
    const/16 v3, 0x58c

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 270
    :cond_ab
    const/16 v2, 0x58b

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Lad/t;->i()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Lad/t;->t()I

    move-result v2

    if-lez v2, :cond_5f

    .line 275
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Lad/t;->t()I

    move-result v0

    invoke-virtual {p0}, Lad/b;->av()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f
.end method

.method public static a(Lad/b;Lad/m;Z)LaM/H;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v3

    .line 79
    new-instance v2, LaM/H;

    invoke-direct {v2}, LaM/H;-><init>()V

    .line 80
    if-nez v3, :cond_f

    move-object v0, v2

    .line 130
    :cond_e
    :goto_e
    return-object v0

    .line 85
    :cond_f
    invoke-virtual {p1}, Lad/m;->r()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-virtual {p1}, Lad/m;->n()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 86
    check-cast p1, Lad/a;

    .line 88
    const/16 v4, 0x60a

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3}, Lad/t;->l()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4, v0}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaM/H;->a:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lad/a;->j()I

    move-result v0

    if-lez v0, :cond_43

    .line 92
    invoke-virtual {p1}, Lad/a;->j()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaM/H;->c:Ljava/lang/String;

    :cond_41
    :goto_41
    move-object v0, v2

    .line 98
    goto :goto_e

    .line 94
    :cond_43
    invoke-virtual {p1}, Lad/a;->i()I

    move-result v0

    if-lez v0, :cond_41

    .line 95
    invoke-virtual {p1}, Lad/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lad/b;->av()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, LaM/H;->c:Ljava/lang/String;

    goto :goto_41

    .line 119
    :cond_58
    invoke-static {p0}, LaM/G;->a(Lad/b;)Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-virtual {p1}, Lad/m;->o()Z

    move-result v2

    if-nez v2, :cond_6a

    invoke-virtual {p1}, Lad/m;->p()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 121
    :cond_6a
    invoke-static {p0, p1}, LaM/G;->a(Lad/b;Lad/m;)LaM/H;

    move-result-object v0

    .line 127
    :goto_6e
    invoke-virtual {p1}, Lad/m;->x()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez p2, :cond_e

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lad/m;->w()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, LaM/H;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaM/H;->a:Ljava/lang/String;

    goto/16 :goto_e

    .line 123
    :cond_9d
    if-nez p2, :cond_a4

    :goto_9f
    invoke-static {p0, p1, v0}, LaM/G;->b(Lad/b;Lad/m;Z)LaM/H;

    move-result-object v0

    goto :goto_6e

    :cond_a4
    move v0, v1

    goto :goto_9f
.end method

.method public static a(Lad/b;IILcom/google/googlenav/ui/g;Z)LaQ/H;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 495
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 496
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 497
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 501
    invoke-static {p0, p1, v1}, LaM/G;->a(Lad/b;IZ)LaM/H;

    move-result-object v5

    .line 503
    invoke-virtual {v5}, LaM/H;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 504
    iget-object v0, v5, LaM/H;->a:Ljava/lang/String;

    invoke-static {v1}, LaM/G;->a(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 507
    :cond_27
    invoke-virtual {v5}, LaM/H;->c()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v1

    .line 508
    :goto_2e
    iget-object v6, v5, LaM/H;->b:[Lad/n;

    array-length v6, v6

    if-ge v0, v6, :cond_4f

    .line 509
    iget-object v6, v5, LaM/H;->b:[Lad/n;

    aget-object v6, v6, v0

    .line 510
    invoke-virtual {v6}, Lad/n;->c()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 511
    invoke-virtual {v6}, Lad/n;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, LaM/G;->c(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 508
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 516
    :cond_4f
    invoke-virtual {v5}, LaM/H;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 517
    iget-object v0, v5, LaM/H;->c:Ljava/lang/String;

    invoke-static {v1}, LaM/G;->b(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 521
    :cond_62
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 522
    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 524
    :cond_6b
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 525
    invoke-static {v3, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 528
    :cond_74
    if-eqz p4, :cond_91

    const/16 v4, 0x5ec

    .line 530
    :goto_78
    if-eqz p4, :cond_94

    const/4 v5, -0x1

    .line 531
    :goto_7b
    invoke-virtual {p0, p1}, Lad/b;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v2

    .line 532
    new-instance v0, LaQ/s;

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    move v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, LaQ/s;-><init>(Ljava/lang/CharSequence;Lad/t;IIII)V

    return-object v0

    .line 528
    :cond_91
    const/16 v4, 0xc8

    goto :goto_78

    .line 530
    :cond_94
    const/16 v5, 0xe7

    goto :goto_7b
.end method

.method public static a(Z)Lcom/google/googlenav/ui/aV;
    .registers 2
    .parameter

    .prologue
    .line 574
    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/aV;->j:Lcom/google/googlenav/ui/aV;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/aV;->G:Lcom/google/googlenav/ui/aV;

    goto :goto_4
.end method

.method private static a(Lad/t;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 287
    invoke-virtual {p0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lad/t;->u()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 290
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lad/t;->v()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_2c
    return-object v0
.end method

.method public static a(Lad/b;IIZZ)Ljava/util/Vector;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 379
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 380
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 381
    const/4 v0, 0x0

    .line 382
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v1

    .line 384
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bn;->f()LS/g;

    move-result-object v5

    .line 387
    invoke-virtual {p0}, Lad/b;->m()Z

    move-result v6

    if-eqz v6, :cond_9e

    move-object v0, p0

    .line 388
    check-cast v0, Lad/w;

    .line 389
    invoke-virtual {v0, p2, v1, p3}, Lad/w;->a(ILcom/google/googlenav/ui/p;Z)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v0, v4, v3, p2, p3}, LaM/G;->a(Lad/w;Ljava/util/Vector;Ljava/util/Vector;IZ)I

    move-result v0

    .line 421
    :goto_31
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 422
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_41

    if-nez p3, :cond_41

    .line 423
    invoke-static {v4, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 425
    :cond_41
    const/4 v2, 0x0

    .line 426
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ff

    .line 427
    if-eqz p3, :cond_fc

    .line 428
    new-instance v2, Lcom/google/googlenav/ui/be;

    invoke-direct {v2}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v2

    move-object v3, v2

    .line 435
    :goto_58
    if-eqz p3, :cond_102

    const/4 v2, 0x5

    .line 439
    :goto_5b
    new-instance v7, Lcom/google/googlenav/ui/be;

    invoke-direct {v7}, Lcom/google/googlenav/ui/be;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/googlenav/ui/be;->a(Ljava/util/List;)Lcom/google/googlenav/ui/be;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/be;->a(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/be;->d(I)Lcom/google/googlenav/ui/be;

    move-result-object v2

    if-eqz p4, :cond_106

    const/16 v0, 0x5ec

    :goto_70
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->e(I)Lcom/google/googlenav/ui/be;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/be;->h(I)Lcom/google/googlenav/ui/be;

    move-result-object v2

    .line 447
    if-nez p4, :cond_7f

    .line 448
    const/16 v0, 0xe7

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->f(I)Lcom/google/googlenav/ui/be;

    .line 452
    :cond_7f
    if-nez p3, :cond_84

    .line 453
    invoke-virtual {v2, p1}, Lcom/google/googlenav/ui/be;->b(I)Lcom/google/googlenav/ui/be;

    .line 456
    :cond_84
    invoke-static {v1, v5}, Lcom/google/googlenav/ui/bf;->a(Ljava/lang/String;LS/g;)Lcom/google/googlenav/ui/bf;

    move-result-object v0

    .line 458
    if-eqz p3, :cond_10a

    .line 459
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->b(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    .line 460
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->c(I)Lcom/google/googlenav/ui/be;

    .line 461
    invoke-virtual {v2}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 472
    :goto_98
    if-eqz v3, :cond_9d

    .line 473
    invoke-virtual {v6, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 476
    :cond_9d
    return-object v6

    .line 395
    :cond_9e
    if-nez p3, :cond_a4

    .line 396
    invoke-virtual {p0, p2, v1}, Lad/b;->a(ILcom/google/googlenav/ui/p;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_a4
    invoke-static {p0, p2, p3}, LaM/G;->a(Lad/b;IZ)LaM/H;

    move-result-object v6

    .line 401
    invoke-virtual {v6}, LaM/H;->a()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 402
    iget-object v1, v6, LaM/H;->a:Ljava/lang/String;

    invoke-static {p3}, LaM/G;->a(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 405
    :cond_bb
    invoke-virtual {v6}, LaM/H;->c()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 406
    const/4 v1, 0x0

    :goto_c2
    iget-object v7, v6, LaM/H;->b:[Lad/n;

    array-length v7, v7

    if-ge v1, v7, :cond_e3

    .line 407
    iget-object v7, v6, LaM/H;->b:[Lad/n;

    aget-object v7, v7, v1

    .line 408
    invoke-virtual {v7}, Lad/n;->c()Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 409
    invoke-virtual {v7}, Lad/n;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {p3}, LaM/G;->c(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 406
    :cond_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 414
    :cond_e3
    invoke-virtual {v6}, LaM/H;->b()Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 415
    iget-object v1, v6, LaM/H;->c:Ljava/lang/String;

    invoke-static {p3}, LaM/G;->b(Z)Lcom/google/googlenav/ui/aV;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 418
    :cond_f6
    const/4 v1, 0x0

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto/16 :goto_31

    .line 431
    :cond_fc
    invoke-static {v4, v3}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    :cond_ff
    move-object v3, v2

    goto/16 :goto_58

    .line 435
    :cond_102
    const/16 v2, 0x9

    goto/16 :goto_5b

    .line 439
    :cond_106
    const/16 v0, 0xc8

    goto/16 :goto_70

    .line 463
    :cond_10a
    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/be;->a(Lcom/google/googlenav/ui/bf;)Lcom/google/googlenav/ui/be;

    .line 464
    invoke-virtual {p0, p2}, Lad/b;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lad/m;

    invoke-virtual {v0}, Lad/m;->m()Lad/t;

    move-result-object v1

    .line 468
    new-instance v4, Lcom/google/googlenav/ui/h;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/be;->a()Lcom/google/googlenav/ui/bd;

    move-result-object v2

    invoke-virtual {p0}, Lad/b;->k()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_12d

    const/4 v0, 0x1

    :goto_125
    invoke-direct {v4, v2, v1, v0}, Lcom/google/googlenav/ui/h;-><init>(Lcom/google/googlenav/ui/bd;Lad/t;Z)V

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_98

    :cond_12d
    const/4 v0, 0x0

    goto :goto_125
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 332
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_9
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    return-void
.end method

.method private static a(Lad/b;)Z
    .registers 2
    .parameter

    .prologue
    .line 347
    invoke-virtual {p0}, Lad/b;->m()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/googlenav/common/Config;->v()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static b(Lad/b;Lad/m;Z)LaM/H;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    invoke-virtual {p1}, Lad/m;->m()Lad/t;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p1}, Lad/m;->o()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lad/m;->q()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lad/m;->r()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 151
    :cond_22
    invoke-virtual {p1}, Lad/m;->o()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 152
    invoke-virtual {p1}, Lad/m;->z()Z

    move-result v0

    if-eqz v0, :cond_d1

    const/16 v0, 0x596

    .line 154
    :goto_30
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lad/t;->B()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1}, Lad/t;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 158
    invoke-virtual {p1}, Lad/m;->z()Z

    move-result v0

    if-eqz v0, :cond_d5

    const/16 v0, 0x594

    .line 160
    :goto_55
    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lad/t;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_68
    :goto_68
    invoke-virtual {v1}, Lad/t;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 168
    const-string v0, "\n"

    const/16 v4, 0xed

    invoke-static {v4}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lad/t;->s()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, LaM/G;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_89
    invoke-virtual {p1}, Lad/m;->k()I

    move-result v0

    packed-switch v0, :pswitch_data_148

    .line 204
    if-eqz p2, :cond_b3

    .line 207
    invoke-virtual {p1}, Lad/m;->v()Z

    move-result v0

    if-nez v0, :cond_9e

    invoke-virtual {v1}, Lad/t;->u()Z

    move-result v0

    if-nez v0, :cond_134

    :cond_9e
    invoke-virtual {v1}, Lad/t;->t()I

    move-result v0

    if-lez v0, :cond_134

    .line 209
    invoke-virtual {v1}, Lad/t;->t()I

    move-result v0

    invoke-virtual {p0}, Lad/b;->av()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_b3
    :goto_b3
    new-instance v0, LaM/H;

    invoke-direct {v0}, LaM/H;-><init>()V

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c4

    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaM/H;->a:Ljava/lang/String;

    .line 223
    :cond_c4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d0

    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, LaM/H;->c:Ljava/lang/String;

    .line 226
    :cond_d0
    return-object v0

    .line 152
    :cond_d1
    const/16 v0, 0x598

    goto/16 :goto_30

    .line 158
    :cond_d5
    const/16 v0, 0x597

    goto/16 :goto_55

    .line 164
    :cond_d9
    invoke-virtual {v1}, Lad/t;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 175
    :pswitch_e1
    invoke-static {v1}, LaM/G;->c(Lad/t;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 177
    const-string v1, "\n"

    invoke-static {v3, v1, v0}, LaM/G;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b3

    .line 184
    :pswitch_f1
    const/16 v0, 0x593

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {v1}, Lad/t;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-static {v1}, LaM/G;->d(Lad/t;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_114

    .line 190
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 191
    :cond_114
    invoke-virtual {v1}, Lad/t;->t()I

    move-result v0

    if-lez v0, :cond_b3

    if-eqz p2, :cond_b3

    .line 192
    invoke-virtual {v1}, Lad/t;->t()I

    move-result v0

    invoke-virtual {p0}, Lad/b;->av()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 199
    :pswitch_12c
    invoke-virtual {v1}, Lad/t;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 211
    :cond_134
    invoke-virtual {v1}, Lad/t;->u()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 212
    invoke-virtual {v1}, Lad/t;->v()I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b3

    .line 172
    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_f1
        :pswitch_12c
    .end packed-switch
.end method

.method private static b(Z)Lcom/google/googlenav/ui/aV;
    .registers 2
    .parameter

    .prologue
    .line 579
    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/aV;->k:Lcom/google/googlenav/ui/aV;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/aV;->H:Lcom/google/googlenav/ui/aV;

    goto :goto_4
.end method

.method private static b(Lad/t;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 298
    invoke-virtual {p0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lad/t;->q()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 302
    const/16 v0, 0xe6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lad/t;->r()I

    move-result v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :cond_2c
    return-object v0
.end method

.method private static c(Z)Lcom/google/googlenav/ui/aV;
    .registers 2
    .parameter

    .prologue
    .line 584
    if-eqz p0, :cond_5

    sget-object v0, Lcom/google/googlenav/ui/aV;->l:Lcom/google/googlenav/ui/aV;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/google/googlenav/ui/aV;->I:Lcom/google/googlenav/ui/aV;

    goto :goto_4
.end method

.method private static c(Lad/t;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    invoke-virtual {p0}, Lad/t;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 313
    const/16 v1, 0x58f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_1e
    :goto_1e
    return-object v0

    .line 315
    :cond_1f
    invoke-virtual {p0}, Lad/t;->q()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 316
    const/16 v0, 0x590

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lad/t;->r()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

.method private static d(Lad/t;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 351
    invoke-virtual {p0}, Lad/t;->j()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 354
    const/16 v1, 0x58e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 362
    :cond_1e
    :goto_1e
    return-object v0

    .line 356
    :cond_1f
    invoke-virtual {p0}, Lad/t;->u()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 357
    const/16 v0, 0x58d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Lad/t;->v()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method
