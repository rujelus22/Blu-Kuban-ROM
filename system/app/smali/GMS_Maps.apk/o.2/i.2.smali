.class public Lo/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/Q;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:F

.field private final j:F

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Landroid/text/Spanned;

.field private final o:Lo/K;

.field private final p:Ljava/util/Map;

.field private final q:Ljava/util/List;

.field private final r:Ljava/util/List;

.field private final s:Ljava/util/List;

.field private final t:Ljava/util/List;

.field private final u:Ljava/util/List;

.field private final v:Ljava/util/List;

.field private w:Lo/I;

.field private x:Lo/I;


# direct methods
.method protected constructor <init>(IIILn/Q;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 23
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput p1, p0, Lo/I;->b:I

    .line 350
    iput p2, p0, Lo/I;->c:I

    .line 351
    iput p3, p0, Lo/I;->d:I

    .line 352
    iput-object p4, p0, Lo/I;->a:Ln/Q;

    .line 353
    iput p5, p0, Lo/I;->e:I

    .line 354
    iput p6, p0, Lo/I;->f:I

    .line 355
    iput p8, p0, Lo/I;->g:I

    .line 356
    iput p9, p0, Lo/I;->h:I

    .line 357
    iput p10, p0, Lo/I;->i:F

    .line 358
    move/from16 v0, p11

    iput v0, p0, Lo/I;->j:F

    .line 360
    move-object/from16 v0, p12

    iput-object v0, p0, Lo/I;->k:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p13

    iput-object v0, p0, Lo/I;->l:Ljava/lang/String;

    .line 362
    move-object/from16 v0, p14

    iput-object v0, p0, Lo/I;->m:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p16

    iput-object v0, p0, Lo/I;->u:Ljava/util/List;

    .line 364
    move-object/from16 v0, p17

    iput-object v0, p0, Lo/I;->v:Ljava/util/List;

    .line 366
    iget-object v1, p0, Lo/I;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/j;

    .line 367
    invoke-virtual {v1, p0}, Lo/j;->a(Lo/I;)V

    goto :goto_33

    .line 370
    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/I;->q:Ljava/util/List;

    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/I;->r:Ljava/util/List;

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/I;->s:Ljava/util/List;

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/I;->t:Ljava/util/List;

    .line 375
    move-object/from16 v0, p15

    invoke-static {p0, v0}, Lo/I;->a(Lo/I;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lo/I;->p:Ljava/util/Map;

    .line 376
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lo/I;->q:Ljava/util/List;

    invoke-static {v1, v2}, Lo/I;->a(Ljava/util/List;Ljava/util/List;)V

    .line 377
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lo/I;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lo/I;->a(Ljava/util/List;Ljava/util/List;)V

    .line 378
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lo/I;->r:Ljava/util/List;

    invoke-static {v1, v2}, Lo/I;->a(Ljava/util/List;Ljava/util/List;)V

    .line 379
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lo/I;->s:Ljava/util/List;

    invoke-static {v1, v2}, Lo/I;->a(Ljava/util/List;Ljava/util/List;)V

    .line 380
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lo/I;->t:Ljava/util/List;

    invoke-static {v1, v2}, Lo/I;->a(Ljava/util/List;Ljava/util/List;)V

    .line 381
    iget v1, p0, Lo/I;->b:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_109

    .line 382
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 383
    if-eqz v1, :cond_e7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e7

    .line 384
    iget-object v2, p0, Lo/I;->q:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_e7
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 387
    if-eqz v1, :cond_109

    .line 388
    const/4 v2, 0x0

    :goto_f7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_109

    .line 389
    iget-object v3, p0, Lo/I;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 394
    :cond_109
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 395
    if-eqz v1, :cond_130

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_130

    .line 396
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/K;

    iput-object v1, p0, Lo/I;->o:Lo/K;

    .line 400
    :goto_127
    iget-object v1, p0, Lo/I;->p:Ljava/util/Map;

    invoke-static {p7, v1}, Lo/I;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lo/I;->n:Landroid/text/Spanned;

    .line 401
    return-void

    .line 398
    :cond_130
    const/4 v1, 0x0

    iput-object v1, p0, Lo/I;->o:Lo/K;

    goto :goto_127
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 862
    .line 863
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 865
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 867
    if-ltz v0, :cond_12

    const/16 v2, 0x12

    if-lt v0, v2, :cond_13

    :cond_12
    move v0, v1

    .line 871
    :cond_13
    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method protected static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/Spanned;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 537
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v3}, Ljava/text/Bidi;->requiresBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v2

    .line 578
    :goto_15
    return-object v0

    .line 546
    :cond_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 548
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    .line 552
    :cond_33
    new-instance v0, Lo/J;

    invoke-direct {v0}, Lo/J;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 560
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v1

    .line 561
    :goto_40
    if-ge v3, v5, :cond_7e

    .line 562
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 563
    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v6

    .line 564
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_56

    .line 561
    :cond_52
    :goto_52
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_40

    .line 567
    :cond_56
    const/4 v1, -0x1

    .line 569
    :cond_57
    invoke-virtual {v0}, Lo/K;->b()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 572
    if-ltz v1, :cond_71

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v1

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v2, v1, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_57

    .line 573
    :cond_71
    if-ltz v1, :cond_52

    .line 574
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    const/16 v7, 0x21

    invoke-virtual {v2, v0, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_52

    :cond_7e
    move-object v0, v2

    .line 578
    goto :goto_15
.end method

.method private static a(Lo/P;Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 513
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    invoke-virtual {p0}, Lo/P;->e()Ljava/lang/String;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_1b

    .line 518
    new-instance v0, Lo/K;

    const/4 v1, 0x6

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lo/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_1b
    invoke-virtual {p0}, Lo/P;->d()Lo/Q;

    move-result-object v9

    .line 523
    if-eqz v9, :cond_4d

    move v7, v6

    .line 524
    :goto_22
    invoke-virtual {v9}, Lo/Q;->a()I

    move-result v0

    if-ge v7, v0, :cond_4d

    .line 525
    new-instance v0, Lo/K;

    const/4 v1, 0x7

    invoke-virtual {v9, v7}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Lo/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_42

    .line 527
    const/16 v0, 0xa

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    :cond_42
    invoke-virtual {v9, v7}, Lo/Q;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_22

    .line 532
    :cond_4d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/Q;)Ljava/util/List;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    .line 909
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 912
    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v3

    .line 913
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_21

    .line 914
    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 916
    invoke-static {v5, v3, v4}, Lo/j;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;D)Lo/j;

    move-result-object v5

    .line 917
    if-eqz v5, :cond_1e

    .line 918
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 921
    :cond_21
    return-object v1
.end method

.method private static a(Lo/I;Ljava/util/List;)Ljava/util/Map;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 588
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 589
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 590
    invoke-virtual {v0}, Lo/K;->a()I

    move-result v4

    .line 591
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 592
    if-nez v1, :cond_31

    .line 593
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 594
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    :cond_31
    invoke-static {v0, p0}, Lo/K;->a(Lo/K;Lo/I;)V

    .line 597
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 599
    :cond_38
    return-object v2
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/Q;IIIFFLo/P;)Lo/I;
    .registers 28
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 426
    const/16 v3, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 427
    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 428
    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v8

    .line 429
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    .line 430
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v9

    .line 431
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v10

    .line 438
    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 439
    const/16 v3, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 441
    invoke-static {v4}, Lo/I;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v11

    .line 442
    invoke-static {v4}, Lo/I;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v7

    .line 443
    const/16 v3, 0xc

    if-ne v11, v3, :cond_97

    .line 444
    const/4 v3, 0x7

    const/4 v6, -0x1

    invoke-static {v4, v3, v6}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 452
    :goto_58
    invoke-static {v4}, Lo/I;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v18

    .line 453
    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lo/I;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/Q;)Ljava/util/List;

    move-result-object v19

    .line 454
    const/16 v6, 0x10

    if-ne v11, v6, :cond_99

    .line 455
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 456
    if-eqz p7, :cond_b5

    .line 457
    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lo/I;->a(Lo/P;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b3

    :goto_79
    move-object v5, v4

    move-object v4, v6

    :goto_7b
    move-object/from16 v17, v4

    move v6, v7

    move-object v13, v5

    move v5, v11

    move v7, v3

    .line 475
    :goto_81
    new-instance v3, Lo/M;

    move-object/from16 v4, p1

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v19}, Lo/M;-><init>(Ln/Q;IIIIIIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 478
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v3, v0, v1, v2}, Lo/I;->a(Lo/M;III)Lo/I;

    move-result-object v3

    return-object v3

    .line 449
    :cond_97
    const/4 v3, -0x1

    goto :goto_58

    .line 463
    :cond_99
    invoke-static {v4}, Lo/I;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_7b

    .line 466
    :cond_9e
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 467
    const/4 v3, 0x0

    .line 468
    const/4 v6, 0x0

    .line 469
    const/4 v7, -0x1

    .line 470
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 471
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v5

    move v5, v3

    goto :goto_81

    :cond_b3
    move-object v4, v5

    goto :goto_79

    :cond_b5
    move-object v4, v6

    goto :goto_7b
.end method

.method public static a(Lo/M;III)Lo/I;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    new-instance v0, Lo/I;

    invoke-virtual/range {p0 .. p0}, Lo/M;->b()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lo/M;->c()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lo/M;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lo/M;->a()Ln/Q;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lo/M;->e()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lo/M;->j()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lo/M;->h()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lo/M;->i()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lo/M;->k()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lo/M;->l()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lo/M;->m()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lo/M;->n()Ljava/util/List;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lo/M;->o()Ljava/util/List;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lo/M;->p()Ljava/util/List;

    move-result-object v17

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v0 .. v17}, Lo/I;-><init>(IIILn/Q;IILjava/lang/String;IIFFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 582
    if-eqz p0, :cond_5

    .line 583
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 585
    :cond_5
    return-void
.end method

.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 929
    const/4 v0, 0x5

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 878
    .line 879
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 881
    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 883
    if-ltz v0, :cond_11

    const/4 v2, 0x3

    if-lt v0, v2, :cond_12

    :cond_11
    move v0, v1

    .line 887
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 897
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    .line 898
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lo/L;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/L;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 901
    :cond_1b
    return-object v1
.end method

.method private static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/ArrayList;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 604
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 605
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    .line 606
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 608
    invoke-static {v3}, Lo/K;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/K;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 610
    :cond_1b
    return-object v1
.end method


# virtual methods
.method public a()Ln/Q;
    .registers 2

    .prologue
    .line 617
    iget-object v0, p0, Lo/I;->a:Ln/Q;

    return-object v0
.end method

.method a(Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lo/I;->w:Lo/I;

    .line 835
    return-void
.end method

.method public a(Lo/j;)V
    .registers 3
    .parameter

    .prologue
    .line 825
    iget-object v0, p0, Lo/I;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    invoke-virtual {p1, p0}, Lo/j;->a(Lo/I;)V

    .line 827
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 625
    iget v0, p0, Lo/I;->b:I

    return v0
.end method

.method b(Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lo/I;->x:Lo/I;

    .line 843
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 633
    iget v0, p0, Lo/I;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Lo/I;->d:I

    return v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Lo/I;->g:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 657
    iget v0, p0, Lo/I;->h:I

    return v0
.end method

.method public g()F
    .registers 2

    .prologue
    .line 664
    iget v0, p0, Lo/I;->i:F

    return v0
.end method

.method public h()F
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lo/I;->j:F

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Lo/I;->e:I

    return v0
.end method

.method public j()Lo/I;
    .registers 2

    .prologue
    .line 685
    iget-object v0, p0, Lo/I;->w:Lo/I;

    return-object v0
.end method

.method public k()Lo/I;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lo/I;->x:Lo/I;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lo/I;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Lo/I;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 714
    iget-object v0, p0, Lo/I;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()Landroid/text/Spanned;
    .registers 2

    .prologue
    .line 722
    iget-object v0, p0, Lo/I;->n:Landroid/text/Spanned;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .registers 2

    .prologue
    .line 731
    iget-object v0, p0, Lo/I;->q:Ljava/util/List;

    return-object v0
.end method

.method public q()Ljava/util/List;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lo/I;->r:Ljava/util/List;

    return-object v0
.end method

.method public r()Ljava/util/List;
    .registers 2

    .prologue
    .line 752
    iget-object v0, p0, Lo/I;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 753
    iget-object v0, p0, Lo/I;->q:Ljava/util/List;

    .line 755
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lo/I;->s:Ljava/util/List;

    goto :goto_a
.end method

.method public s()Ljava/util/List;
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lo/I;->t:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lo/I;->p:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[idx:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/I;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo/I;->a:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/I;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/I;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " side:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/I;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text:\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/I;->o()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lo/I;->u:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lo/I;->v:Ljava/util/List;

    return-object v0
.end method

.method public final w()Lo/K;
    .registers 3

    .prologue
    .line 796
    invoke-virtual {p0}, Lo/I;->r()Ljava/util/List;

    move-result-object v0

    .line 797
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 798
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 799
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/K;

    .line 801
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public x()Lo/K;
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, Lo/I;->o:Lo/K;

    return-object v0
.end method

.method public y()I
    .registers 2

    .prologue
    .line 847
    iget v0, p0, Lo/I;->f:I

    return v0
.end method
