.class public Lcom/google/googlenav/ui/bd;
.super Lcom/google/googlenav/ui/aQ;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:Ljava/lang/Object;

.field public static final g:Ljava/lang/Object;

.field public static final h:Ljava/lang/Object;


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:I

.field public final C:Z

.field public final D:Z

.field public E:Lat/B;

.field public final F:I

.field public G:Ljava/lang/String;

.field public final H:[Lcom/google/googlenav/ui/bd;

.field public final I:Lcom/google/googlenav/ui/f;

.field public final J:Lcom/google/googlenav/ui/b;

.field public K:Z

.field public final L:Ljava/lang/Object;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/googlenav/ui/bf;

.field public final n:Lcom/google/googlenav/ui/bf;

.field public final o:Lcom/google/googlenav/ui/bf;

.field public final p:Lcom/google/googlenav/ui/bf;

.field public final q:I

.field public final r:I

.field public final s:LaQ/H;

.field public final t:Ljava/lang/String;

.field public final u:I

.field public final v:Z

.field public final w:Lcom/google/googlenav/ui/aW;

.field public final x:Lcom/google/googlenav/ui/aW;

.field public final y:Lcom/google/googlenav/ui/view/c;

.field public final z:Lcom/google/googlenav/ui/view/K;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->c:Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->d:Ljava/lang/Object;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->e:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->f:Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->g:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bd;->h:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/bd;)V
    .registers 39
    .parameter

    .prologue
    .line 401
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/googlenav/ui/bd;->j:Ljava/util/List;

    move-object/from16 v0, p1

    iget v4, v0, Lcom/google/googlenav/ui/bd;->k:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/googlenav/ui/bd;->l:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/googlenav/ui/bd;->n:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/googlenav/ui/bd;->p:Lcom/google/googlenav/ui/bf;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/google/googlenav/ui/bd;->q:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/google/googlenav/ui/bd;->r:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/google/googlenav/ui/bd;->B:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bd;->f()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bd;->g()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bd;->h()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bd;->i()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlenav/ui/bd;->j()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bd;->u:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bd;->v:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->x:Lcom/google/googlenav/ui/aW;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->z:Lcom/google/googlenav/ui/view/K;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->A:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bd;->C:Z

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bd;->D:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->E:Lat/B;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/googlenav/ui/bd;->F:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->G:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->L:Ljava/lang/Object;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->I:Lcom/google/googlenav/ui/f;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/googlenav/ui/bd;->K:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    move-object/from16 v36, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v36}, Lcom/google/googlenav/ui/bd;-><init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/K;Ljava/lang/Object;ZZLat/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/f;Lcom/google/googlenav/ui/b;ZLaQ/H;)V

    .line 412
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;IILcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;Lcom/google/googlenav/ui/bf;IILjava/lang/String;IIIIIIIZLcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/K;Ljava/lang/Object;ZZLat/B;ILjava/lang/String;Ljava/lang/Object;[Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/f;Lcom/google/googlenav/ui/b;ZLaQ/H;)V
    .registers 43
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
    .parameter

    .prologue
    .line 367
    move-object v1, p0

    move/from16 v2, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v5, p16

    move/from16 v6, p17

    invoke-direct/range {v1 .. v6}, Lcom/google/googlenav/ui/aQ;-><init>(IIIII)V

    .line 368
    iput-object p1, p0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    .line 369
    iput-object p2, p0, Lcom/google/googlenav/ui/bd;->j:Ljava/util/List;

    .line 370
    iput p3, p0, Lcom/google/googlenav/ui/bd;->k:I

    .line 371
    iput p4, p0, Lcom/google/googlenav/ui/bd;->l:I

    .line 372
    iput-object p5, p0, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    .line 373
    iput-object p6, p0, Lcom/google/googlenav/ui/bd;->n:Lcom/google/googlenav/ui/bf;

    .line 374
    iput-object p7, p0, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    .line 375
    iput-object p8, p0, Lcom/google/googlenav/ui/bd;->p:Lcom/google/googlenav/ui/bf;

    .line 376
    move/from16 v0, p9

    iput v0, p0, Lcom/google/googlenav/ui/bd;->q:I

    .line 377
    move/from16 v0, p10

    iput v0, p0, Lcom/google/googlenav/ui/bd;->r:I

    .line 378
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->t:Ljava/lang/String;

    .line 379
    move/from16 v0, p12

    iput v0, p0, Lcom/google/googlenav/ui/bd;->B:I

    .line 380
    move/from16 v0, p18

    iput v0, p0, Lcom/google/googlenav/ui/bd;->u:I

    .line 381
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bd;->v:Z

    .line 382
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    .line 383
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->x:Lcom/google/googlenav/ui/aW;

    .line 384
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->y:Lcom/google/googlenav/ui/view/c;

    .line 385
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->z:Lcom/google/googlenav/ui/view/K;

    .line 386
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->A:Ljava/lang/Object;

    .line 387
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bd;->C:Z

    .line 388
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bd;->D:Z

    .line 389
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->E:Lat/B;

    .line 390
    move/from16 v0, p28

    iput v0, p0, Lcom/google/googlenav/ui/bd;->F:I

    .line 391
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->G:Ljava/lang/String;

    .line 392
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->L:Ljava/lang/Object;

    .line 393
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    .line 394
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->I:Lcom/google/googlenav/ui/f;

    .line 395
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->J:Lcom/google/googlenav/ui/b;

    .line 396
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bd;->K:Z

    .line 397
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/googlenav/ui/bd;->s:LaQ/H;

    .line 398
    return-void
.end method


# virtual methods
.method public k()Z
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->m:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->o:Lcom/google/googlenav/ui/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/bf;->a:LS/f;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/google/googlenav/ui/bd;->K:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    if-eqz v0, :cond_18

    .line 421
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->w:Lcom/google/googlenav/ui/aW;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    if-eqz v0, :cond_38

    .line 424
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 425
    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 428
    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->j:Ljava/util/List;

    if-eqz v0, :cond_58

    .line 429
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 430
    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 433
    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    if-eqz v0, :cond_83

    .line 434
    const/4 v0, 0x0

    :goto_5d
    iget-object v2, p0, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    array-length v2, v2

    if-ge v0, v2, :cond_83

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/googlenav/ui/bd;->H:[Lcom/google/googlenav/ui/bd;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 438
    :cond_83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
