.class public Lcom/google/googlenav/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Z

.field public final B:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final C:I

.field public final D:LaC/N;

.field public final E:Lat/H;

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lat/H;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/googlenav/aX;

.field public final i:Lcom/google/googlenav/aY;

.field public final j:I

.field public final k:Ljava/lang/String;

.field public final l:Lat/M;

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Lat/B;

.field public final q:Z

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/util/Map;

.field public final x:Ljava/util/Set;

.field public final y:Z

.field public final z:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIIILat/H;Ljava/lang/String;Lcom/google/googlenav/aX;Lcom/google/googlenav/aY;ILjava/lang/String;Lat/M;ZZZLat/B;ZIIZ[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/util/Map;ZZZLcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;ILaC/N;Lat/H;ZZZZ)V
    .registers 37
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
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/google/googlenav/bc;->a:Ljava/lang/String;

    .line 346
    iput p2, p0, Lcom/google/googlenav/bc;->b:I

    .line 347
    iput p3, p0, Lcom/google/googlenav/bc;->c:I

    .line 348
    iput p4, p0, Lcom/google/googlenav/bc;->d:I

    .line 349
    iput p5, p0, Lcom/google/googlenav/bc;->e:I

    .line 350
    iput-object p6, p0, Lcom/google/googlenav/bc;->f:Lat/H;

    .line 351
    iput-object p7, p0, Lcom/google/googlenav/bc;->g:Ljava/lang/String;

    .line 352
    iput-object p8, p0, Lcom/google/googlenav/bc;->h:Lcom/google/googlenav/aX;

    .line 353
    iput-object p9, p0, Lcom/google/googlenav/bc;->i:Lcom/google/googlenav/aY;

    .line 354
    iput p10, p0, Lcom/google/googlenav/bc;->j:I

    .line 355
    iput-object p11, p0, Lcom/google/googlenav/bc;->k:Ljava/lang/String;

    .line 356
    iput-object p12, p0, Lcom/google/googlenav/bc;->l:Lat/M;

    .line 357
    iput-boolean p13, p0, Lcom/google/googlenav/bc;->m:Z

    .line 358
    iput-boolean p14, p0, Lcom/google/googlenav/bc;->n:Z

    .line 359
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->o:Z

    .line 360
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/googlenav/bc;->p:Lat/B;

    .line 361
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->q:Z

    .line 362
    move/from16 v0, p18

    iput v0, p0, Lcom/google/googlenav/bc;->r:I

    .line 363
    move/from16 v0, p19

    iput v0, p0, Lcom/google/googlenav/bc;->s:I

    .line 364
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->t:Z

    .line 365
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/googlenav/bc;->u:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 366
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/googlenav/bc;->v:Ljava/lang/String;

    .line 367
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/googlenav/bc;->w:Ljava/util/Map;

    .line 368
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->z:Z

    .line 369
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->y:Z

    .line 370
    move/from16 v0, p26

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->A:Z

    .line 371
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/googlenav/bc;->B:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 372
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/googlenav/bc;->x:Ljava/util/Set;

    .line 373
    move/from16 v0, p29

    iput v0, p0, Lcom/google/googlenav/bc;->C:I

    .line 374
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/googlenav/bc;->D:LaC/N;

    .line 375
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/googlenav/bc;->E:Lat/H;

    .line 376
    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->F:Z

    .line 377
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->G:Z

    .line 378
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->H:Z

    .line 379
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/google/googlenav/bc;->I:Z

    .line 380
    return-void
.end method
