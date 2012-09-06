.class public Lcom/google/googlenav/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private A:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private B:Ljava/util/Set;

.field private C:I

.field private D:LaC/N;

.field private E:Lat/H;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lat/H;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/googlenav/aX;

.field private i:Lcom/google/googlenav/aY;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lat/M;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Lat/B;

.field private q:Z

.field private r:I

.field private s:I

.field private t:Z

.field private u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Map;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bd;->a:Ljava/lang/String;

    .line 422
    iput v4, p0, Lcom/google/googlenav/bd;->b:I

    .line 423
    iput v1, p0, Lcom/google/googlenav/bd;->c:I

    .line 424
    iput v3, p0, Lcom/google/googlenav/bd;->d:I

    .line 425
    iput v3, p0, Lcom/google/googlenav/bd;->e:I

    .line 426
    iput-object v2, p0, Lcom/google/googlenav/bd;->f:Lat/H;

    .line 427
    const-string v0, "100"

    iput-object v0, p0, Lcom/google/googlenav/bd;->g:Ljava/lang/String;

    .line 428
    iput-object v2, p0, Lcom/google/googlenav/bd;->h:Lcom/google/googlenav/aX;

    .line 429
    iput-object v2, p0, Lcom/google/googlenav/bd;->i:Lcom/google/googlenav/aY;

    .line 430
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/googlenav/bd;->j:I

    .line 431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/bd;->k:Ljava/lang/String;

    .line 432
    iput-object v2, p0, Lcom/google/googlenav/bd;->l:Lat/M;

    .line 433
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->m:Z

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->n:Z

    .line 435
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->o:Z

    .line 436
    iput-object v2, p0, Lcom/google/googlenav/bd;->p:Lat/B;

    .line 437
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->q:Z

    .line 438
    iput v1, p0, Lcom/google/googlenav/bd;->r:I

    .line 439
    iput v4, p0, Lcom/google/googlenav/bd;->s:I

    .line 440
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->t:Z

    .line 441
    iput-object v2, p0, Lcom/google/googlenav/bd;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 442
    iput-object v2, p0, Lcom/google/googlenav/bd;->v:Ljava/lang/String;

    .line 443
    iput-object v2, p0, Lcom/google/googlenav/bd;->w:Ljava/util/Map;

    .line 444
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->x:Z

    .line 445
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->y:Z

    .line 446
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->z:Z

    .line 447
    iput-object v2, p0, Lcom/google/googlenav/bd;->A:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 448
    iput-object v2, p0, Lcom/google/googlenav/bd;->B:Ljava/util/Set;

    .line 449
    iput v1, p0, Lcom/google/googlenav/bd;->C:I

    .line 450
    iput-object v2, p0, Lcom/google/googlenav/bd;->D:LaC/N;

    .line 451
    iput-object v2, p0, Lcom/google/googlenav/bd;->E:Lat/H;

    .line 452
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->F:Z

    .line 453
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->G:Z

    .line 454
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->H:Z

    .line 455
    iput-boolean v1, p0, Lcom/google/googlenav/bd;->I:Z

    .line 456
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/bc;)V
    .registers 3
    .parameter

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iget-object v0, p1, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bd;->a:Ljava/lang/String;

    .line 465
    iget v0, p1, Lcom/google/googlenav/bc;->b:I

    iput v0, p0, Lcom/google/googlenav/bd;->b:I

    .line 466
    iget v0, p1, Lcom/google/googlenav/bc;->c:I

    iput v0, p0, Lcom/google/googlenav/bd;->c:I

    .line 467
    iget v0, p1, Lcom/google/googlenav/bc;->d:I

    iput v0, p0, Lcom/google/googlenav/bd;->d:I

    .line 468
    iget v0, p1, Lcom/google/googlenav/bc;->e:I

    iput v0, p0, Lcom/google/googlenav/bd;->e:I

    .line 469
    iget-object v0, p1, Lcom/google/googlenav/bc;->f:Lat/H;

    iput-object v0, p0, Lcom/google/googlenav/bd;->f:Lat/H;

    .line 470
    iget-object v0, p1, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bd;->g:Ljava/lang/String;

    .line 471
    iget-object v0, p1, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aX;

    iput-object v0, p0, Lcom/google/googlenav/bd;->h:Lcom/google/googlenav/aX;

    .line 472
    iget-object v0, p1, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aY;

    iput-object v0, p0, Lcom/google/googlenav/bd;->i:Lcom/google/googlenav/aY;

    .line 473
    iget v0, p1, Lcom/google/googlenav/bc;->j:I

    iput v0, p0, Lcom/google/googlenav/bd;->j:I

    .line 474
    iget-object v0, p1, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bd;->k:Ljava/lang/String;

    .line 475
    iget-object v0, p1, Lcom/google/googlenav/bc;->l:Lat/M;

    iput-object v0, p0, Lcom/google/googlenav/bd;->l:Lat/M;

    .line 476
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->m:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->m:Z

    .line 477
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->n:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->n:Z

    .line 478
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->o:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->o:Z

    .line 479
    iget-object v0, p1, Lcom/google/googlenav/bc;->p:Lat/B;

    iput-object v0, p0, Lcom/google/googlenav/bd;->p:Lat/B;

    .line 480
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->q:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->q:Z

    .line 481
    iget v0, p1, Lcom/google/googlenav/bc;->r:I

    iput v0, p0, Lcom/google/googlenav/bd;->r:I

    .line 482
    iget v0, p1, Lcom/google/googlenav/bc;->s:I

    iput v0, p0, Lcom/google/googlenav/bd;->s:I

    .line 483
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->t:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->t:Z

    .line 484
    iget-object v0, p1, Lcom/google/googlenav/bc;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lcom/google/googlenav/bd;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 485
    iget-object v0, p1, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/bd;->v:Ljava/lang/String;

    .line 486
    iget-object v0, p1, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    iput-object v0, p0, Lcom/google/googlenav/bd;->w:Ljava/util/Map;

    .line 487
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->z:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->x:Z

    .line 488
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->y:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->y:Z

    .line 489
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->A:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->z:Z

    .line 490
    iget-object v0, p1, Lcom/google/googlenav/bc;->B:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lcom/google/googlenav/bd;->A:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 491
    iget-object v0, p1, Lcom/google/googlenav/bc;->x:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/googlenav/bd;->B:Ljava/util/Set;

    .line 492
    iget v0, p1, Lcom/google/googlenav/bc;->C:I

    iput v0, p0, Lcom/google/googlenav/bd;->C:I

    .line 493
    iget-object v0, p1, Lcom/google/googlenav/bc;->D:LaC/N;

    iput-object v0, p0, Lcom/google/googlenav/bd;->D:LaC/N;

    .line 494
    iget-object v0, p1, Lcom/google/googlenav/bc;->E:Lat/H;

    iput-object v0, p0, Lcom/google/googlenav/bd;->E:Lat/H;

    .line 495
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->F:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->F:Z

    .line 496
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->G:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->G:Z

    .line 497
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->H:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->H:Z

    .line 498
    iget-boolean v0, p1, Lcom/google/googlenav/bc;->I:Z

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->I:Z

    .line 499
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/bc;
    .registers 38

    .prologue
    .line 720
    new-instance v1, Lcom/google/googlenav/bc;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/googlenav/bd;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/googlenav/bd;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/googlenav/bd;->c:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/googlenav/bd;->d:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/googlenav/bd;->e:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/googlenav/bd;->f:Lat/H;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/googlenav/bd;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/googlenav/bd;->h:Lcom/google/googlenav/aX;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/googlenav/bd;->i:Lcom/google/googlenav/aY;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/googlenav/bd;->j:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/googlenav/bd;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/googlenav/bd;->l:Lat/M;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/googlenav/bd;->m:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/googlenav/bd;->n:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->o:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->p:Lat/B;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->q:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bd;->r:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bd;->s:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->t:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->v:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->w:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->x:Z

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->y:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->z:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->A:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->B:Ljava/util/Set;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/googlenav/bd;->C:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->D:LaC/N;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/bd;->E:Lat/H;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->F:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->G:Z

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->H:Z

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/googlenav/bd;->I:Z

    move/from16 v36, v0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/bc;-><init>(Ljava/lang/String;IIIILat/H;Ljava/lang/String;Lcom/google/googlenav/aX;Lcom/google/googlenav/aY;ILjava/lang/String;Lat/M;ZZZLat/B;ZIIZ[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/util/Map;ZZZLcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;ILaC/N;Lat/H;ZZZZ)V

    return-object v1
.end method

.method public a(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 509
    iput p1, p0, Lcom/google/googlenav/bd;->b:I

    .line 510
    return-object p0
.end method

.method public a(LaC/N;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/google/googlenav/bd;->D:LaC/N;

    .line 686
    return-object p0
.end method

.method public a(Lat/B;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/googlenav/bd;->p:Lat/B;

    .line 594
    return-object p0
.end method

.method public a(Lat/H;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/googlenav/bd;->f:Lat/H;

    .line 534
    return-object p0
.end method

.method public a(Lat/M;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/google/googlenav/bd;->l:Lat/M;

    .line 570
    return-object p0
.end method

.method public a(Lcom/google/googlenav/aX;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/googlenav/bd;->h:Lcom/google/googlenav/aX;

    .line 546
    return-object p0
.end method

.method public a(Lcom/google/googlenav/aY;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/googlenav/bd;->i:Lcom/google/googlenav/aY;

    .line 552
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/googlenav/bd;->a:Ljava/lang/String;

    .line 504
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/googlenav/bd;->w:Ljava/util/Map;

    .line 636
    return-object p0
.end method

.method public a(Ljava/util/Set;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/google/googlenav/bd;->B:Ljava/util/Set;

    .line 641
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->m:Z

    .line 576
    return-object p0
.end method

.method public a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/google/googlenav/bd;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 624
    return-object p0
.end method

.method public b(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 515
    iput p1, p0, Lcom/google/googlenav/bd;->c:I

    .line 516
    return-object p0
.end method

.method public b(Lat/H;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 691
    iput-object p1, p0, Lcom/google/googlenav/bd;->E:Lat/H;

    .line 692
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/googlenav/bd;->g:Ljava/lang/String;

    .line 540
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->n:Z

    .line 582
    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 521
    iput p1, p0, Lcom/google/googlenav/bd;->d:I

    .line 522
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/googlenav/bd;->k:Ljava/lang/String;

    .line 564
    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->o:Z

    .line 588
    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 527
    iput p1, p0, Lcom/google/googlenav/bd;->e:I

    .line 528
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/google/googlenav/bd;->v:Ljava/lang/String;

    .line 630
    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->q:Z

    .line 600
    return-object p0
.end method

.method public e(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 557
    iput p1, p0, Lcom/google/googlenav/bd;->j:I

    .line 558
    return-object p0
.end method

.method public e(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->t:Z

    .line 618
    return-object p0
.end method

.method public f(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 611
    iput p1, p0, Lcom/google/googlenav/bd;->s:I

    .line 612
    return-object p0
.end method

.method public f(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 646
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->y:Z

    .line 647
    return-object p0
.end method

.method public g(I)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 677
    iput p1, p0, Lcom/google/googlenav/bd;->C:I

    .line 678
    return-object p0
.end method

.method public g(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->x:Z

    .line 653
    return-object p0
.end method

.method public h(Z)Lcom/google/googlenav/bd;
    .registers 3
    .parameter

    .prologue
    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/bd;->z:Z

    .line 659
    return-object p0
.end method

.method public i(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->F:Z

    .line 697
    return-object p0
.end method

.method public j(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 701
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->G:Z

    .line 702
    return-object p0
.end method

.method public k(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->H:Z

    .line 707
    return-object p0
.end method

.method public l(Z)Lcom/google/googlenav/bd;
    .registers 2
    .parameter

    .prologue
    .line 711
    iput-boolean p1, p0, Lcom/google/googlenav/bd;->I:Z

    .line 712
    return-object p0
.end method
