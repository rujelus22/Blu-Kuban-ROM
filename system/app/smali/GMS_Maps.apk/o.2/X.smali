.class public final Lo/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final E:Ljava/util/Comparator;

.field public static final a:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private final B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:[Lo/I;

.field private f:Ln/U;

.field private g:Ln/X;

.field private final h:[Lo/R;

.field private i:I

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/lang/String;

.field private volatile l:[Lo/A;

.field private m:[D

.field private n:[D

.field private final o:I

.field private final p:I

.field private final q:Z

.field private final r:F

.field private final s:F

.field private t:J

.field private u:Z

.field private final v:I

.field private w:Lo/g;

.field private x:[Lo/b;

.field private final y:I

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 165
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TRAFFIC_STATUS_UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TRAFFIC_STATUS_BLACK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TRAFFIC_STATUS_RED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TRAFFIC_STATUS_YELLOW"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TRAFFIC_STATUS_GREEN"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TRAFFIC_STATUS_IRRELEVANT"

    aput-object v2, v0, v1

    sput-object v0, Lo/x;->a:[Ljava/lang/String;

    .line 924
    new-instance v0, Lo/y;

    invoke-direct {v0}, Lo/y;-><init>()V

    sput-object v0, Lo/x;->E:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(II[Lo/P;Lo/P;FF[Lo/I;Ln/U;Ljava/lang/String;IILjava/util/ArrayList;[Lo/A;ZI[Lo/b;ILjava/util/List;Ljava/lang/String;)V
    .registers 25
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
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Lo/x;->i:I

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/x;->u:Z

    .line 271
    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/x;->C:Z

    .line 275
    const-string v1, ""

    iput-object v1, p0, Lo/x;->D:Ljava/lang/String;

    .line 325
    iput p1, p0, Lo/x;->b:I

    .line 326
    iput p2, p0, Lo/x;->c:I

    .line 327
    iput p5, p0, Lo/x;->r:F

    .line 328
    iput p6, p0, Lo/x;->s:F

    .line 329
    iput-object p7, p0, Lo/x;->e:[Lo/I;

    .line 330
    iput-object p8, p0, Lo/x;->f:Ln/U;

    .line 331
    iput-object p9, p0, Lo/x;->k:Ljava/lang/String;

    .line 332
    iput p10, p0, Lo/x;->p:I

    .line 333
    move-object/from16 v0, p12

    iput-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    .line 334
    move/from16 v0, p14

    iput-boolean v0, p0, Lo/x;->d:Z

    .line 335
    move/from16 v0, p15

    iput v0, p0, Lo/x;->v:I

    .line 336
    move-object/from16 v0, p16

    iput-object v0, p0, Lo/x;->x:[Lo/b;

    .line 337
    move/from16 v0, p17

    iput v0, p0, Lo/x;->y:I

    .line 338
    if-eqz p18, :cond_ad

    :goto_36
    move-object/from16 v0, p18

    iput-object v0, p0, Lo/x;->z:Ljava/util/List;

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lo/x;->t:J

    .line 342
    array-length v1, p7

    if-nez v1, :cond_b3

    const/4 v1, 0x1

    :goto_44
    iput-boolean v1, p0, Lo/x;->q:Z

    .line 344
    new-instance v1, Ln/X;

    iget-object v2, p0, Lo/x;->f:Ln/U;

    invoke-direct {v1, v2}, Ln/X;-><init>(Ln/U;)V

    iput-object v1, p0, Lo/x;->g:Ln/X;

    .line 345
    invoke-direct {p0}, Lo/x;->I()V

    .line 347
    iget-object v1, p0, Lo/x;->e:[Lo/I;

    invoke-static {v1}, Lo/x;->c([Lo/I;)V

    .line 348
    iget-object v1, p0, Lo/x;->e:[Lo/I;

    invoke-static {v1}, Lo/x;->d([Lo/I;)V

    .line 349
    iget-object v1, p0, Lo/x;->e:[Lo/I;

    invoke-static {v1}, Lo/x;->a([Lo/I;)Z

    move-result v1

    iput-boolean v1, p0, Lo/x;->A:Z

    .line 350
    iget-object v1, p0, Lo/x;->e:[Lo/I;

    invoke-static {v1}, Lo/x;->b([Lo/I;)Z

    move-result v1

    iput-boolean v1, p0, Lo/x;->B:Z

    .line 352
    if-eqz p3, :cond_b5

    .line 353
    array-length v1, p3

    new-array v1, v1, [Lo/R;

    iput-object v1, p0, Lo/x;->h:[Lo/R;

    .line 354
    const/4 v1, 0x0

    :goto_74
    array-length v2, p3

    if-ge v1, v2, :cond_b8

    .line 355
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    new-instance v3, Lo/R;

    aget-object v4, p3, v1

    invoke-direct {v3, v4, p0}, Lo/R;-><init>(Lo/P;Lo/x;)V

    aput-object v3, v2, v1

    .line 356
    if-eqz p4, :cond_9c

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lo/P;->c()Ln/s;

    move-result-object v2

    invoke-virtual {p4}, Lo/P;->c()Ln/s;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 358
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lo/R;->a(Z)V

    .line 360
    :cond_9c
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lo/R;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_aa

    .line 361
    const/4 v2, 0x1

    iput-boolean v2, p0, Lo/x;->C:Z

    .line 354
    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 338
    :cond_ad
    new-instance p18, Ljava/util/ArrayList;

    invoke-direct/range {p18 .. p18}, Ljava/util/ArrayList;-><init>()V

    goto :goto_36

    .line 342
    :cond_b3
    const/4 v1, 0x0

    goto :goto_44

    .line 365
    :cond_b5
    const/4 v1, 0x0

    iput-object v1, p0, Lo/x;->h:[Lo/R;

    .line 371
    :cond_b8
    invoke-virtual {p0}, Lo/x;->t()Z

    move-result v1

    if-nez v1, :cond_c1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_d4

    :cond_c1
    const/4 v1, 0x1

    :goto_c2
    iput-boolean v1, p0, Lo/x;->u:Z

    .line 374
    if-nez p13, :cond_d6

    .line 375
    invoke-direct {p0}, Lo/x;->H()V

    .line 376
    move/from16 v0, p11

    iput v0, p0, Lo/x;->o:I

    .line 382
    :goto_cd
    if-eqz p19, :cond_d3

    .line 383
    move-object/from16 v0, p19

    iput-object v0, p0, Lo/x;->D:Ljava/lang/String;

    .line 385
    :cond_d3
    return-void

    .line 371
    :cond_d4
    const/4 v1, 0x0

    goto :goto_c2

    .line 378
    :cond_d6
    move-object/from16 v0, p13

    iput-object v0, p0, Lo/x;->l:[Lo/A;

    .line 379
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lo/x;->b(D)I

    move-result v1

    iput v1, p0, Lo/x;->o:I

    goto :goto_cd
.end method

.method private H()V
    .registers 6

    .prologue
    .line 788
    iget-object v0, p0, Lo/x;->e:[Lo/I;

    if-eqz v0, :cond_2e

    .line 789
    iget-object v0, p0, Lo/x;->e:[Lo/I;

    array-length v0, v0

    new-array v2, v0, [Lo/A;

    .line 790
    const/4 v1, 0x0

    .line 791
    iget-object v0, p0, Lo/x;->e:[Lo/I;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_2c

    .line 792
    new-instance v3, Lo/A;

    iget-object v4, p0, Lo/x;->e:[Lo/I;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lo/I;->y()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lo/A;-><init>(II)V

    aput-object v3, v2, v0

    .line 793
    iget-object v3, p0, Lo/x;->e:[Lo/I;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lo/I;->f()I

    move-result v3

    add-int/2addr v1, v3

    .line 791
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 795
    :cond_2c
    iput-object v2, p0, Lo/x;->l:[Lo/A;

    .line 797
    :cond_2e
    return-void
.end method

.method private I()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 804
    iget-object v0, p0, Lo/x;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lo/x;->m:[D

    .line 805
    iget-object v0, p0, Lo/x;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lo/x;->n:[D

    .line 806
    iget-object v0, p0, Lo/x;->f:Ln/U;

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v0

    if-nez v0, :cond_20

    .line 822
    :cond_1f
    return-void

    .line 809
    :cond_20
    iget-object v0, p0, Lo/x;->m:[D

    aput-wide v1, v0, v3

    .line 810
    iget-object v0, p0, Lo/x;->n:[D

    aput-wide v1, v0, v3

    .line 814
    const/4 v0, 0x1

    move-wide v3, v1

    :goto_2a
    iget-object v5, p0, Lo/x;->m:[D

    array-length v5, v5

    if-ge v0, v5, :cond_1f

    .line 815
    iget-object v5, p0, Lo/x;->f:Ln/U;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Ln/U;->b(I)F

    move-result v5

    float-to-double v5, v5

    .line 816
    add-double/2addr v3, v5

    .line 817
    iget-object v7, p0, Lo/x;->f:Ln/U;

    invoke-virtual {v7, v0}, Ln/U;->a(I)Ln/Q;

    move-result-object v7

    invoke-virtual {v7}, Ln/Q;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Ln/Q;->a(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 819
    iget-object v5, p0, Lo/x;->m:[D

    aput-wide v3, v5, v0

    .line 820
    iget-object v5, p0, Lo/x;->n:[D

    aput-wide v1, v5, v0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/U;)Ljava/util/ArrayList;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v8, 0xf

    const/4 v0, 0x0

    .line 973
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 976
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    move v1, v0

    move v2, v0

    move v3, v0

    .line 981
    :goto_f
    if-ge v1, v5, :cond_39

    .line 982
    invoke-virtual {p0, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 984
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 987
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v7

    if-lt v0, v7, :cond_26

    .line 988
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 990
    :cond_26
    if-le v0, v3, :cond_30

    .line 991
    new-instance v7, Lo/C;

    invoke-direct {v7, v3, v0, v2}, Lo/C;-><init>(III)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_30
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 981
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_f

    .line 996
    :cond_39
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_4f

    .line 997
    new-instance v0, Lo/C;

    invoke-virtual {p1}, Ln/U;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v3, v1, v2}, Lo/C;-><init>(III)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1000
    :cond_4f
    return-object v4
.end method

.method static a([Ln/s;)Ln/U;
    .registers 10
    .parameter

    .prologue
    const/high16 v8, 0x4100

    .line 751
    array-length v3, p0

    .line 752
    new-instance v4, Ln/W;

    invoke-direct {v4, v3}, Ln/W;-><init>(I)V

    .line 753
    const/4 v1, 0x0

    .line 754
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_5d

    .line 755
    aget-object v2, p0, v0

    .line 756
    invoke-virtual {v2}, Ln/s;->a()I

    move-result v5

    invoke-virtual {v2}, Ln/s;->b()I

    move-result v2

    invoke-static {v5, v2}, Ln/Q;->b(II)Ln/Q;

    move-result-object v2

    .line 763
    if-eqz v1, :cond_56

    invoke-virtual {v2, v1}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 764
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v3, :cond_47

    .line 765
    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v5}, Ln/s;->a()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Ln/s;->b()I

    move-result v6

    invoke-static {v5, v6}, Ln/Q;->b(II)Ln/Q;

    move-result-object v5

    .line 768
    invoke-virtual {v5, v2}, Ln/Q;->c(Ln/Q;)F

    move-result v6

    .line 769
    cmpl-float v7, v6, v8

    if-lez v7, :cond_47

    .line 770
    div-float v6, v8, v6

    invoke-static {v2, v5, v6, v2}, Ln/Q;->a(Ln/Q;Ln/Q;FLn/Q;)V

    .line 773
    :cond_47
    invoke-virtual {v2, v1}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 775
    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Ln/Q;->a(I)V

    .line 778
    :cond_56
    invoke-virtual {v4, v2}, Ln/W;->a(Ln/Q;)Z

    .line 754
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_a

    .line 781
    :cond_5d
    invoke-virtual {v4}, Ln/W;->d()Ln/U;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lo/I;)Lo/j;
    .registers 5
    .parameter

    .prologue
    .line 1181
    invoke-virtual {p0}, Lo/I;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/j;

    .line 1182
    invoke-virtual {v0}, Lo/j;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1186
    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static a(IILo/P;Lo/P;[Lo/I;Ln/U;Ljava/lang/String;I[Lo/b;ILjava/util/List;)Lo/x;
    .registers 32
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
    .line 500
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_55

    .line 501
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lo/I;->y()I

    move-result v2

    if-ltz v2, :cond_1a

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lo/I;->y()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Ln/U;->b()I

    move-result v3

    if-lt v2, v3, :cond_52

    .line 503
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid point index for step: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " point index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, p4, v1

    invoke-virtual {v1}, Lo/I;->y()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 507
    :cond_55
    const/4 v1, 0x2

    new-array v4, v1, [Lo/P;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p3, v4, v1

    .line 508
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 509
    const/4 v1, 0x1

    :goto_61
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_77

    .line 510
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lo/I;->f()I

    move-result v2

    add-int/2addr v11, v2

    .line 511
    aget-object v2, p4, v1

    invoke-virtual {v2}, Lo/I;->e()I

    move-result v2

    add-int/2addr v12, v2

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 513
    :cond_77
    new-instance v1, Lo/x;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    move/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    invoke-direct/range {v1 .. v20}, Lo/x;-><init>(II[Lo/P;Lo/P;FF[Lo/I;Ln/U;Ljava/lang/String;IILjava/util/ArrayList;[Lo/A;ZI[Lo/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I[Lo/P;FFZLo/P;I[Lo/b;)Lo/x;
    .registers 30
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
    .line 415
    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trips with multiple routes are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_13
    const/16 v1, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_ac

    const/4 v1, 0x1

    .line 420
    :goto_1e
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v10

    .line 422
    const/16 v2, 0x1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_af

    const/16 v2, 0x1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 424
    :goto_38
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 425
    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 427
    :goto_4f
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_b4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v11

    .line 429
    :goto_5b
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v12

    .line 432
    :goto_67
    invoke-static/range {p0 .. p0}, Lo/x;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v19

    .line 434
    invoke-static {v3}, Lo/x;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ln/s;

    move-result-object v4

    invoke-static {v4}, Lo/x;->a([Ln/s;)Ln/U;

    move-result-object v9

    .line 437
    if-nez v1, :cond_b8

    .line 438
    move-object/from16 v0, p2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-static {v3, v9, v1}, Lo/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/U;Lo/P;)[Lo/I;

    move-result-object v8

    .line 444
    :goto_80
    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object/from16 v0, p2

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p2, v4

    invoke-static {v3, v1, v4}, Lo/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lo/P;Lo/P;)[Lo/P;

    move-result-object v4

    .line 446
    invoke-static {v3, v9}, Lo/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/U;)Ljava/util/ArrayList;

    move-result-object v13

    .line 447
    invoke-static {v3}, Lo/x;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/A;

    move-result-object v14

    .line 449
    const/16 v18, -0x1

    .line 450
    new-instance v1, Lo/x;

    move/from16 v3, p1

    move-object/from16 v5, p6

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v15, p5

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v1 .. v20}, Lo/x;-><init>(II[Lo/P;Lo/P;FF[Lo/I;Ln/U;Ljava/lang/String;IILjava/util/ArrayList;[Lo/A;ZI[Lo/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 418
    :cond_ac
    const/4 v1, 0x0

    goto/16 :goto_1e

    .line 422
    :cond_af
    const-string v20, ""

    goto :goto_38

    .line 425
    :cond_b2
    const/4 v2, 0x0

    goto :goto_4f

    .line 427
    :cond_b4
    const/4 v11, 0x0

    goto :goto_5b

    .line 429
    :cond_b6
    const/4 v12, 0x0

    goto :goto_67

    .line 440
    :cond_b8
    const/4 v1, 0x0

    new-array v8, v1, [Lo/I;

    goto :goto_80
.end method

.method static a([Lo/I;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1370
    array-length v3, p0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_2f

    aget-object v0, p0, v2

    .line 1371
    invoke-virtual {v0}, Lo/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/L;

    .line 1376
    invoke-virtual {v0}, Lo/L;->a()I

    move-result v0

    .line 1377
    const/4 v5, 0x2

    if-eq v0, v5, :cond_29

    const/4 v5, 0x3

    if-eq v0, v5, :cond_29

    const/16 v5, 0x9

    if-ne v0, v5, :cond_f

    .line 1379
    :cond_29
    const/4 v0, 0x1

    .line 1383
    :goto_2a
    return v0

    .line 1370
    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2f
    move v0, v1

    .line 1383
    goto :goto_2a
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/A;
    .registers 8
    .parameter

    .prologue
    const/16 v6, 0xc

    .line 1008
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 1009
    new-array v0, v2, [Lo/A;

    .line 1010
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_25

    .line 1011
    invoke-virtual {p0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1012
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 1013
    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 1014
    new-instance v5, Lo/A;

    invoke-direct {v5, v4, v3}, Lo/A;-><init>(II)V

    aput-object v5, v0, v1

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 1016
    :cond_25
    if-nez v2, :cond_28

    const/4 v0, 0x0

    :cond_28
    return-object v0
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/U;Lo/P;)[Lo/I;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0xa

    const/4 v8, 0x0

    .line 1122
    invoke-virtual {p0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v9

    .line 1123
    new-array v10, v9, [Lo/I;

    .line 1124
    const/4 v0, 0x0

    move v2, v8

    move-object v1, v0

    .line 1125
    :goto_c
    if-ge v2, v9, :cond_5e

    .line 1126
    invoke-virtual {p0, v11, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1129
    if-eqz v1, :cond_5f

    .line 1130
    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v3

    .line 1132
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v4

    .line 1136
    :goto_1e
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v7

    .line 1140
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_5b

    .line 1141
    if-lez v7, :cond_4f

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p1, v1}, Ln/U;->d(I)F

    move-result v1

    .line 1144
    :goto_32
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_54

    invoke-virtual {p1, v7}, Ln/U;->d(I)F

    move-result v5

    :goto_3e
    move v6, v5

    move v5, v1

    .line 1150
    :goto_40
    invoke-virtual {p1, v7}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lo/I;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ln/Q;IIIFFLo/P;)Lo/I;

    move-result-object v1

    aput-object v1, v10, v2

    .line 1125
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_c

    .line 1141
    :cond_4f
    invoke-virtual {p1, v7}, Ln/U;->d(I)F

    move-result v1

    goto :goto_32

    .line 1144
    :cond_54
    add-int/lit8 v5, v7, -0x1

    invoke-virtual {p1, v5}, Ln/U;->d(I)F

    move-result v5

    goto :goto_3e

    .line 1148
    :cond_5b
    const/4 v6, 0x0

    move v5, v6

    goto :goto_40

    .line 1155
    :cond_5e
    return-object v10

    :cond_5f
    move v4, v8

    move v3, v8

    goto :goto_1e
.end method

.method private static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lo/P;Lo/P;)[Lo/P;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x10

    const/4 v0, 0x0

    .line 1030
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1031
    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lo/P;

    .line 1032
    new-instance v3, Lo/P;

    invoke-direct {v3, p1}, Lo/P;-><init>(Lo/P;)V

    aput-object v3, v2, v0

    .line 1033
    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lo/P;

    invoke-direct {v4, p2}, Lo/P;-><init>(Lo/P;)V

    aput-object v4, v2, v3

    .line 1034
    :goto_1b
    if-ge v0, v1, :cond_2e

    .line 1035
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lo/P;

    invoke-virtual {p0, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v4, v2, v3

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1037
    :cond_2e
    return-object v2
.end method

.method private b(Ln/Q;DZ)Ljava/util/List;
    .registers 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lo/x;->g:Ln/X;

    const-wide/high16 v2, 0x3ff0

    add-double v2, v2, p2

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln/X;->a(Ln/aa;)Ljava/util/List;

    move-result-object v7

    .line 881
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1b

    .line 882
    const/4 v1, 0x0

    .line 919
    :goto_1a
    return-object v1

    .line 886
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 888
    new-instance v8, Ln/Q;

    invoke-direct {v8}, Ln/Q;-><init>()V

    .line 889
    new-instance v9, Ln/Q;

    invoke-direct {v9}, Ln/Q;-><init>()V

    .line 890
    new-instance v10, Ln/Q;

    invoke-direct {v10}, Ln/Q;-><init>()V

    .line 891
    const/4 v1, 0x0

    move v3, v1

    :goto_31
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_ac

    .line 892
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/ai;

    .line 893
    invoke-virtual {v1}, Ln/ai;->a()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    .line 894
    const/4 v2, 0x0

    move v6, v2

    :goto_45
    if-ge v6, v11, :cond_a8

    .line 895
    invoke-virtual {v1, v6, v8}, Ln/ai;->a(ILn/Q;)V

    .line 896
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2, v9}, Ln/ai;->a(ILn/Q;)V

    .line 897
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0, v10}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v2

    float-to-double v12, v2

    .line 899
    cmpg-double v2, v12, p2

    if-gez v2, :cond_8d

    .line 900
    const/4 v5, 0x0

    .line 901
    if-nez p4, :cond_63

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_91

    .line 902
    :cond_63
    new-instance v2, Lo/B;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lo/B;-><init>(Lo/y;)V

    .line 903
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :goto_6c
    if-eqz v2, :cond_8d

    .line 910
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lo/B;->a(Lo/B;Lo/x;)Lo/x;

    .line 911
    invoke-static {v2, v12, v13}, Lo/B;->a(Lo/B;D)D

    .line 912
    invoke-virtual {v1}, Ln/ai;->b()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Lo/B;->a(Lo/B;I)I

    .line 913
    invoke-static {v10}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v5

    invoke-static {v2, v5}, Lo/B;->a(Lo/B;Ln/Q;)Ln/Q;

    .line 914
    invoke-static {v8, v9}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v5

    float-to-double v12, v5

    invoke-static {v2, v12, v13}, Lo/B;->b(Lo/B;D)D

    .line 894
    :cond_8d
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_45

    .line 904
    :cond_91
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/B;

    invoke-static {v2}, Lo/B;->b(Lo/B;)D

    move-result-wide v14

    cmpg-double v2, v12, v14

    if-gez v2, :cond_b8

    .line 907
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/B;

    goto :goto_6c

    .line 891
    :cond_a8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_31

    .line 919
    :cond_ac
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b5

    const/4 v1, 0x0

    goto/16 :goto_1a

    :cond_b5
    move-object v1, v4

    goto/16 :goto_1a

    :cond_b8
    move-object v2, v5

    goto :goto_6c
.end method

.method static b([Lo/I;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1391
    array-length v3, p0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_28

    aget-object v0, p0, v2

    .line 1392
    invoke-virtual {v0}, Lo/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/L;

    .line 1393
    invoke-virtual {v0}, Lo/L;->a()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_f

    .line 1394
    const/4 v0, 0x1

    .line 1398
    :goto_23
    return v0

    .line 1391
    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_28
    move v0, v1

    .line 1398
    goto :goto_23
.end method

.method static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Ln/s;
    .registers 15
    .parameter

    .prologue
    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v2, 0x0

    .line 1193
    invoke-virtual {p0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    move v0, v2

    move v1, v2

    .line 1196
    :goto_a
    if-ge v0, v7, :cond_1d

    .line 1199
    invoke-virtual {p0, v12, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1201
    invoke-virtual {v3, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    array-length v3, v3

    .line 1204
    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1206
    :cond_1d
    new-array v8, v1, [Ln/s;

    move v6, v2

    move v4, v2

    .line 1209
    :goto_21
    if-ge v6, v7, :cond_84

    .line 1210
    invoke-virtual {p0, v12, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1212
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 1216
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 1218
    add-int/lit8 v0, v4, 0x1

    new-instance v9, Ln/s;

    invoke-direct {v9, v3, v1}, Ln/s;-><init>(II)V

    aput-object v9, v8, v4

    .line 1220
    invoke-virtual {v5, v13}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v9

    .line 1222
    if-eqz v9, :cond_7f

    .line 1223
    array-length v10, v9

    move v4, v3

    move v3, v1

    move v1, v2

    .line 1224
    :goto_50
    if-ge v1, v10, :cond_7f

    .line 1227
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v9, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    int-to-short v1, v1

    add-int/2addr v4, v1

    .line 1230
    add-int/lit8 v5, v11, 0x1

    aget-byte v1, v9, v11

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v11, v1, 0x8

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v9, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v5, v11

    int-to-short v5, v5

    add-int/2addr v3, v5

    .line 1233
    add-int/lit8 v5, v0, 0x1

    new-instance v11, Ln/s;

    invoke-direct {v11, v4, v3}, Ln/s;-><init>(II)V

    aput-object v11, v8, v0

    move v0, v5

    goto :goto_50

    .line 1209
    :cond_7f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v4, v0

    goto :goto_21

    .line 1238
    :cond_84
    return-object v8
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 9
    .parameter

    .prologue
    const/16 v7, 0x1a

    const/4 v6, 0x2

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 460
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_31

    .line 461
    invoke-virtual {p0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 464
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    :goto_23
    new-instance v5, Lo/N;

    invoke-direct {v5, v4, v0}, Lo/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 466
    :cond_2f
    const/4 v0, 0x0

    goto :goto_23

    .line 474
    :cond_31
    return-object v2
.end method

.method private static c([Lo/I;)V
    .registers 4
    .parameter

    .prologue
    .line 1160
    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_19

    .line 1161
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lo/I;->a(Lo/I;)V

    .line 1162
    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lo/I;->b(Lo/I;)V

    .line 1160
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1164
    :cond_19
    return-void
.end method

.method private static d([Lo/I;)V
    .registers 5
    .parameter

    .prologue
    .line 1168
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_33

    .line 1169
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lo/I;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/j;

    .line 1170
    invoke-virtual {v0}, Lo/j;->f()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1171
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lo/x;->a(Lo/I;)Lo/j;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/j;->a(Lo/j;)V

    goto :goto_11

    .line 1168
    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1175
    :cond_33
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    .prologue
    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    .line 1268
    invoke-direct {p0}, Lo/x;->H()V

    .line 1269
    return-void
.end method

.method public B()Z
    .registers 2

    .prologue
    .line 1272
    iget-boolean v0, p0, Lo/x;->u:Z

    return v0
.end method

.method C()Lo/g;
    .registers 2

    .prologue
    .line 1288
    iget-object v0, p0, Lo/x;->w:Lo/g;

    return-object v0
.end method

.method public D()[Lo/b;
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lo/x;->x:[Lo/b;

    return-object v0
.end method

.method public E()Z
    .registers 2

    .prologue
    .line 1334
    iget-boolean v0, p0, Lo/x;->A:Z

    return v0
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 1341
    iget-boolean v0, p0, Lo/x;->B:Z

    return v0
.end method

.method public G()Z
    .registers 2

    .prologue
    .line 1405
    iget-boolean v0, p0, Lo/x;->C:Z

    return v0
.end method

.method public a(Lo/B;)D
    .registers 6
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lo/x;->m:[D

    invoke-virtual {p1}, Lo/B;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lo/x;->f:Ln/U;

    invoke-virtual {p1}, Lo/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v2

    invoke-static {p1}, Lo/B;->a(Lo/B;)Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public a(D)I
    .registers 4
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, Lo/x;->m:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 1046
    if-gez v0, :cond_b

    .line 1049
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 1051
    :cond_b
    return v0
.end method

.method public a(Ln/Q;D)Lo/B;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-direct {p0, p1, p2, p3, v1}, Lo/x;->b(Ln/Q;DZ)Ljava/util/List;

    move-result-object v0

    .line 835
    if-nez v0, :cond_9

    .line 836
    const/4 v0, 0x0

    .line 838
    :goto_8
    return-object v0

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/B;

    goto :goto_8
.end method

.method public a(I)Lo/I;
    .registers 3
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lo/x;->e:[Lo/I;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lo/x;->k:Ljava/lang/String;

    .line 1107
    return-void
.end method

.method a(Lo/g;)V
    .registers 2
    .parameter

    .prologue
    .line 1296
    iput-object p1, p0, Lo/x;->w:Lo/g;

    .line 1297
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Lo/x;->y:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ln/Q;DZ)[Lo/B;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lo/x;->b(Ln/Q;DZ)Ljava/util/List;

    move-result-object v0

    .line 855
    if-nez v0, :cond_b

    .line 856
    const/4 v0, 0x0

    new-array v0, v0, [Lo/B;

    .line 863
    :cond_a
    :goto_a
    return-object v0

    .line 858
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lo/B;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/B;

    .line 860
    if-eqz p4, :cond_a

    .line 861
    sget-object v1, Lo/x;->E:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method public b(I)D
    .registers 4
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Lo/x;->m:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(Lo/B;)D
    .registers 8
    .parameter

    .prologue
    .line 727
    iget-object v0, p0, Lo/x;->n:[D

    invoke-virtual {p1}, Lo/B;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lo/x;->f:Ln/U;

    invoke-virtual {p1}, Lo/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v2

    invoke-static {p1}, Lo/B;->a(Lo/B;)Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {p1}, Lo/B;->a(Lo/B;)Ln/Q;

    move-result-object v4

    invoke-virtual {v4}, Ln/Q;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ln/Q;->a(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public b(D)I
    .registers 14
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1071
    iget-object v2, p0, Lo/x;->l:[Lo/A;

    .line 1072
    new-instance v0, Lo/A;

    invoke-virtual {p0, p1, p2}, Lo/x;->a(D)I

    move-result v3

    invoke-direct {v0, v3, v1}, Lo/A;-><init>(II)V

    new-instance v3, Lo/z;

    invoke-direct {v3, p0}, Lo/z;-><init>(Lo/x;)V

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1081
    if-gez v0, :cond_1a

    .line 1082
    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 1084
    :cond_1a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_21

    move v0, v1

    .line 1090
    :goto_20
    return v0

    .line 1087
    :cond_21
    iget-object v1, p0, Lo/x;->m:[D

    aget-object v3, v2, v0

    iget v3, v3, Lo/A;->a:I

    aget-wide v3, v1, v3

    .line 1088
    iget-object v1, p0, Lo/x;->m:[D

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    iget v5, v5, Lo/A;->a:I

    aget-wide v5, v1, v5

    .line 1090
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iget v1, v1, Lo/A;->b:I

    int-to-double v7, v1

    sub-double v9, v5, p1

    sub-double v3, v5, v3

    div-double v3, v9, v3

    aget-object v1, v2, v0

    iget v1, v1, Lo/A;->b:I

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget v0, v0, Lo/A;->b:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    add-double/2addr v0, v7

    double-to-int v0, v0

    goto :goto_20
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 615
    iget v0, p0, Lo/x;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(I)D
    .registers 4
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lo/x;->n:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 619
    iget v0, p0, Lo/x;->y:I

    return v0
.end method

.method public c(D)Ljava/util/Collection;
    .registers 7
    .parameter

    .prologue
    .line 1251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1252
    const/4 v0, 0x1

    :goto_6
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    .line 1253
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lo/R;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lo/R;->i()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lo/R;->j()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-lez v2, :cond_34

    .line 1256
    iget-object v2, p0, Lo/x;->h:[Lo/R;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1259
    :cond_37
    return-object v1
.end method

.method public d()I
    .registers 2

    .prologue
    .line 623
    iget v0, p0, Lo/x;->b:I

    return v0
.end method

.method public d(I)V
    .registers 2
    .parameter

    .prologue
    .line 738
    iput p1, p0, Lo/x;->i:I

    .line 739
    return-void
.end method

.method public e()F
    .registers 2

    .prologue
    .line 627
    iget v0, p0, Lo/x;->r:F

    return v0
.end method

.method public f()F
    .registers 2

    .prologue
    .line 631
    iget v0, p0, Lo/x;->s:F

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 639
    iget v0, p0, Lo/x;->c:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 643
    iget v0, p0, Lo/x;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public i()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 647
    iget v1, p0, Lo/x;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lo/x;->d:Z

    return v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Lo/x;->e:[Lo/I;

    array-length v0, v0

    return v0
.end method

.method public l()Lo/P;
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lo/x;->h:[Lo/R;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lo/x;->h:[Lo/R;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public m()Lo/P;
    .registers 3

    .prologue
    .line 663
    iget-object v0, p0, Lo/x;->h:[Lo/R;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lo/x;->h:[Lo/R;

    iget-object v1, p0, Lo/x;->h:[Lo/R;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public n()Ln/U;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lo/x;->f:Ln/U;

    return-object v0
.end method

.method public o()I
    .registers 2

    .prologue
    .line 678
    iget v0, p0, Lo/x;->o:I

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 685
    iget v0, p0, Lo/x;->p:I

    return v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 693
    iget v0, p0, Lo/x;->v:I

    return v0
.end method

.method public r()I
    .registers 2

    .prologue
    .line 734
    iget v0, p0, Lo/x;->i:I

    return v0
.end method

.method public s()Ljava/util/List;
    .registers 2

    .prologue
    .line 742
    iget-object v0, p0, Lo/x;->z:Ljava/util/List;

    return-object v0
.end method

.method public t()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 947
    iget-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v1

    .line 958
    :goto_f
    return v0

    .line 950
    :cond_10
    iget-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2f

    .line 951
    iget-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    .line 952
    invoke-virtual {v0}, Lo/C;->a()I

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v0}, Lo/C;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2f

    :cond_2d
    move v0, v1

    .line 955
    goto :goto_f

    :cond_2f
    move v0, v2

    .line 958
    goto :goto_f
.end method

.method public u()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lo/x;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public v()[Lo/R;
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, Lo/x;->h:[Lo/R;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1102
    iget-object v0, p0, Lo/x;->k:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1110
    iget-object v0, p0, Lo/x;->D:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 1242
    iget-boolean v0, p0, Lo/x;->q:Z

    return v0
.end method

.method public z()J
    .registers 3

    .prologue
    .line 1263
    iget-wide v0, p0, Lo/x;->t:J

    return-wide v0
.end method
