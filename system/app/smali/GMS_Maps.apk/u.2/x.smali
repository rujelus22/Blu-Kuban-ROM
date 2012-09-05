.class public final Lu/x;
.super Ljava/lang/Object;


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

.field private final e:[Lu/I;

.field private f:Lt/P;

.field private g:Lt/S;

.field private final h:[Lu/R;

.field private i:I

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/lang/String;

.field private volatile l:[Lu/A;

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

.field private w:Lu/g;

.field private x:[Lu/b;

.field private final y:I

.field private z:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

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

    sput-object v0, Lu/x;->a:[Ljava/lang/String;

    new-instance v0, Lu/y;

    invoke-direct {v0}, Lu/y;-><init>()V

    sput-object v0, Lu/x;->E:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(II[Lu/P;Lu/P;FF[Lu/I;Lt/P;Ljava/lang/String;IILjava/util/ArrayList;[Lu/A;ZI[Lu/b;ILjava/util/List;Ljava/lang/String;)V
    .registers 25

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lu/x;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lu/x;->u:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lu/x;->C:Z

    const-string v1, ""

    iput-object v1, p0, Lu/x;->D:Ljava/lang/String;

    iput p1, p0, Lu/x;->b:I

    iput p2, p0, Lu/x;->c:I

    iput p5, p0, Lu/x;->r:F

    iput p6, p0, Lu/x;->s:F

    iput-object p7, p0, Lu/x;->e:[Lu/I;

    iput-object p8, p0, Lu/x;->f:Lt/P;

    iput-object p9, p0, Lu/x;->k:Ljava/lang/String;

    iput p10, p0, Lu/x;->p:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    move/from16 v0, p14

    iput-boolean v0, p0, Lu/x;->d:Z

    move/from16 v0, p15

    iput v0, p0, Lu/x;->v:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lu/x;->x:[Lu/b;

    move/from16 v0, p17

    iput v0, p0, Lu/x;->y:I

    if-eqz p18, :cond_ad

    :goto_36
    move-object/from16 v0, p18

    iput-object v0, p0, Lu/x;->z:Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lu/x;->t:J

    array-length v1, p7

    if-nez v1, :cond_b3

    const/4 v1, 0x1

    :goto_44
    iput-boolean v1, p0, Lu/x;->q:Z

    new-instance v1, Lt/S;

    iget-object v2, p0, Lu/x;->f:Lt/P;

    invoke-direct {v1, v2}, Lt/S;-><init>(Lt/P;)V

    iput-object v1, p0, Lu/x;->g:Lt/S;

    invoke-direct {p0}, Lu/x;->I()V

    iget-object v1, p0, Lu/x;->e:[Lu/I;

    invoke-static {v1}, Lu/x;->c([Lu/I;)V

    iget-object v1, p0, Lu/x;->e:[Lu/I;

    invoke-static {v1}, Lu/x;->d([Lu/I;)V

    iget-object v1, p0, Lu/x;->e:[Lu/I;

    invoke-static {v1}, Lu/x;->a([Lu/I;)Z

    move-result v1

    iput-boolean v1, p0, Lu/x;->A:Z

    iget-object v1, p0, Lu/x;->e:[Lu/I;

    invoke-static {v1}, Lu/x;->b([Lu/I;)Z

    move-result v1

    iput-boolean v1, p0, Lu/x;->B:Z

    if-eqz p3, :cond_b5

    array-length v1, p3

    new-array v1, v1, [Lu/R;

    iput-object v1, p0, Lu/x;->h:[Lu/R;

    const/4 v1, 0x0

    :goto_74
    array-length v2, p3

    if-ge v1, v2, :cond_b8

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    new-instance v3, Lu/R;

    aget-object v4, p3, v1

    invoke-direct {v3, v4, p0}, Lu/R;-><init>(Lu/P;Lu/x;)V

    aput-object v3, v2, v1

    if-eqz p4, :cond_9c

    aget-object v2, p3, v1

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    invoke-virtual {p4}, Lu/P;->c()Lt/o;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/o;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lu/R;->a(Z)V

    :cond_9c
    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lu/R;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_aa

    const/4 v2, 0x1

    iput-boolean v2, p0, Lu/x;->C:Z

    :cond_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_ad
    new-instance p18, Ljava/util/ArrayList;

    invoke-direct/range {p18 .. p18}, Ljava/util/ArrayList;-><init>()V

    goto :goto_36

    :cond_b3
    const/4 v1, 0x0

    goto :goto_44

    :cond_b5
    const/4 v1, 0x0

    iput-object v1, p0, Lu/x;->h:[Lu/R;

    :cond_b8
    invoke-virtual {p0}, Lu/x;->t()Z

    move-result v1

    if-nez v1, :cond_c1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_d4

    :cond_c1
    const/4 v1, 0x1

    :goto_c2
    iput-boolean v1, p0, Lu/x;->u:Z

    if-nez p13, :cond_d6

    invoke-direct {p0}, Lu/x;->H()V

    move/from16 v0, p11

    iput v0, p0, Lu/x;->o:I

    :goto_cd
    if-eqz p19, :cond_d3

    move-object/from16 v0, p19

    iput-object v0, p0, Lu/x;->D:Ljava/lang/String;

    :cond_d3
    return-void

    :cond_d4
    const/4 v1, 0x0

    goto :goto_c2

    :cond_d6
    move-object/from16 v0, p13

    iput-object v0, p0, Lu/x;->l:[Lu/A;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lu/x;->b(D)I

    move-result v1

    iput v1, p0, Lu/x;->o:I

    goto :goto_cd
.end method

.method private H()V
    .registers 6

    iget-object v0, p0, Lu/x;->e:[Lu/I;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lu/x;->e:[Lu/I;

    array-length v0, v0

    new-array v2, v0, [Lu/A;

    const/4 v1, 0x0

    iget-object v0, p0, Lu/x;->e:[Lu/I;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_2c

    new-instance v3, Lu/A;

    iget-object v4, p0, Lu/x;->e:[Lu/I;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lu/I;->y()I

    move-result v4

    invoke-direct {v3, v4, v1}, Lu/A;-><init>(II)V

    aput-object v3, v2, v0

    iget-object v3, p0, Lu/x;->e:[Lu/I;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lu/I;->f()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_2c
    iput-object v2, p0, Lu/x;->l:[Lu/A;

    :cond_2e
    return-void
.end method

.method private I()V
    .registers 10

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lu/x;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lu/x;->m:[D

    iget-object v0, p0, Lu/x;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    new-array v0, v0, [D

    iput-object v0, p0, Lu/x;->n:[D

    iget-object v0, p0, Lu/x;->f:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lu/x;->m:[D

    aput-wide v1, v0, v3

    iget-object v0, p0, Lu/x;->n:[D

    aput-wide v1, v0, v3

    const/4 v0, 0x1

    move-wide v3, v1

    :goto_2a
    iget-object v5, p0, Lu/x;->m:[D

    array-length v5, v5

    if-ge v0, v5, :cond_1f

    iget-object v5, p0, Lu/x;->f:Lt/P;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lt/P;->b(I)F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    iget-object v7, p0, Lu/x;->f:Lt/P;

    invoke-virtual {v7, v0}, Lt/P;->a(I)Lt/L;

    move-result-object v7

    invoke-virtual {v7}, Lt/L;->b()D

    move-result-wide v7

    invoke-static {v7, v8}, Lt/L;->a(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    iget-object v5, p0, Lu/x;->m:[D

    aput-wide v3, v5, v0

    iget-object v5, p0, Lu/x;->n:[D

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method static a(Lam/b;Lt/P;)Ljava/util/ArrayList;
    .registers 11

    const/16 v8, 0xf

    const/4 v0, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v8}, Lam/b;->l(I)I

    move-result v5

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_f
    if-ge v1, v5, :cond_39

    invoke-virtual {p0, v8, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lam/b;->d(I)I

    move-result v0

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v7

    if-lt v0, v7, :cond_26

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_26
    if-le v0, v3, :cond_30

    new-instance v7, Lu/C;

    invoke-direct {v7, v3, v0, v2}, Lu/C;-><init>(III)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Lam/b;->d(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_f

    :cond_39
    invoke-virtual {p1}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_4f

    new-instance v0, Lu/C;

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v3, v1, v2}, Lu/C;-><init>(III)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    return-object v4
.end method

.method static a([Lt/o;)Lt/P;
    .registers 10

    const/high16 v8, 0x4100

    array-length v3, p0

    new-instance v4, Lt/R;

    invoke-direct {v4, v3}, Lt/R;-><init>(I)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_5d

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lt/o;->a()I

    move-result v5

    invoke-virtual {v2}, Lt/o;->b()I

    move-result v2

    invoke-static {v5, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v2

    if-eqz v1, :cond_56

    invoke-virtual {v2, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    add-int/lit8 v5, v0, 0x1

    if-ge v5, v3, :cond_47

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v5}, Lt/o;->a()I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p0, v6

    invoke-virtual {v6}, Lt/o;->b()I

    move-result v6

    invoke-static {v5, v6}, Lt/L;->b(II)Lt/L;

    move-result-object v5

    invoke-virtual {v5, v2}, Lt/L;->c(Lt/L;)F

    move-result v6

    cmpl-float v7, v6, v8

    if-lez v7, :cond_47

    div-float v6, v8, v6

    invoke-static {v2, v5, v6, v2}, Lt/L;->a(Lt/L;Lt/L;FLt/L;)V

    :cond_47
    invoke-virtual {v2, v1}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v2, v1}, Lt/L;->a(I)V

    :cond_56
    invoke-virtual {v4, v2}, Lt/R;->a(Lt/L;)Z

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_a

    :cond_5d
    invoke-virtual {v4}, Lt/R;->d()Lt/P;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lu/I;)Lu/j;
    .registers 5

    invoke-virtual {p0}, Lu/I;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/j;

    invoke-virtual {v0}, Lu/j;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static a(IILu/P;Lu/P;[Lu/I;Lt/P;Ljava/lang/String;I[Lu/b;ILjava/util/List;)Lu/x;
    .registers 32

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_55

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lu/I;->y()I

    move-result v2

    if-ltz v2, :cond_1a

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lu/I;->y()I

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lt/P;->b()I

    move-result v3

    if-lt v2, v3, :cond_52

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

    invoke-virtual {v1}, Lu/I;->y()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_55
    const/4 v1, 0x2

    new-array v4, v1, [Lu/P;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v1, 0x1

    aput-object p3, v4, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x1

    :goto_61
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v1, v2, :cond_77

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lu/I;->f()I

    move-result v2

    add-int/2addr v11, v2

    aget-object v2, p4, v1

    invoke-virtual {v2}, Lu/I;->e()I

    move-result v2

    add-int/2addr v12, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_77
    new-instance v1, Lu/x;

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

    invoke-direct/range {v1 .. v20}, Lu/x;-><init>(II[Lu/P;Lu/P;FF[Lu/I;Lt/P;Ljava/lang/String;IILjava/util/ArrayList;[Lu/A;ZI[Lu/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a(Lam/b;I[Lu/P;FFZLu/P;I[Lu/b;)Lu/x;
    .registers 30

    const/16 v1, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Trips with multiple routes are not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    const/16 v1, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    if-eqz v1, :cond_ac

    const/4 v1, 0x1

    :goto_1e
    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_af

    const/16 v2, 0x1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v20

    :goto_38
    const/16 v2, 0x9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_b2

    const/16 v2, 0xb

    invoke-virtual {v3, v2}, Lam/b;->d(I)I

    move-result v2

    :goto_4f
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_b4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lam/b;->d(I)I

    move-result v11

    :goto_5b
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_b6

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lam/b;->d(I)I

    move-result v12

    :goto_67
    invoke-static/range {p0 .. p0}, Lu/x;->c(Lam/b;)Ljava/util/List;

    move-result-object v19

    invoke-static {v3}, Lu/x;->b(Lam/b;)[Lt/o;

    move-result-object v4

    invoke-static {v4}, Lu/x;->a([Lt/o;)Lt/P;

    move-result-object v9

    if-nez v1, :cond_b8

    move-object/from16 v0, p2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p2, v1

    invoke-static {v3, v9, v1}, Lu/x;->a(Lam/b;Lt/P;Lu/P;)[Lu/I;

    move-result-object v8

    :goto_80
    const/4 v1, 0x0

    aget-object v1, p2, v1

    move-object/from16 v0, p2

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-object v4, p2, v4

    invoke-static {v3, v1, v4}, Lu/x;->a(Lam/b;Lu/P;Lu/P;)[Lu/P;

    move-result-object v4

    invoke-static {v3, v9}, Lu/x;->a(Lam/b;Lt/P;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v3}, Lu/x;->a(Lam/b;)[Lu/A;

    move-result-object v14

    const/16 v18, -0x1

    new-instance v1, Lu/x;

    move/from16 v3, p1

    move-object/from16 v5, p6

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v15, p5

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v1 .. v20}, Lu/x;-><init>(II[Lu/P;Lu/P;FF[Lu/I;Lt/P;Ljava/lang/String;IILjava/util/ArrayList;[Lu/A;ZI[Lu/b;ILjava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_ac
    const/4 v1, 0x0

    goto/16 :goto_1e

    :cond_af
    const-string v20, ""

    goto :goto_38

    :cond_b2
    const/4 v2, 0x0

    goto :goto_4f

    :cond_b4
    const/4 v11, 0x0

    goto :goto_5b

    :cond_b6
    const/4 v12, 0x0

    goto :goto_67

    :cond_b8
    const/4 v1, 0x0

    new-array v8, v1, [Lu/I;

    goto :goto_80
.end method

.method static a([Lu/I;)Z
    .registers 7

    const/4 v1, 0x0

    array-length v3, p0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_2f

    aget-object v0, p0, v2

    invoke-virtual {v0}, Lu/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/L;

    invoke-virtual {v0}, Lu/L;->a()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_29

    const/4 v5, 0x3

    if-eq v0, v5, :cond_29

    const/16 v5, 0x9

    if-ne v0, v5, :cond_f

    :cond_29
    const/4 v0, 0x1

    :goto_2a
    return v0

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2f
    move v0, v1

    goto :goto_2a
.end method

.method static a(Lam/b;)[Lu/A;
    .registers 8

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v2

    new-array v0, v2, [Lu/A;

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_25

    invoke-virtual {p0, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lam/b;->d(I)I

    move-result v4

    const/16 v5, 0xe

    invoke-virtual {v3, v5}, Lam/b;->d(I)I

    move-result v3

    new-instance v5, Lu/A;

    invoke-direct {v5, v4, v3}, Lu/A;-><init>(II)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    if-nez v2, :cond_28

    const/4 v0, 0x0

    :cond_28
    return-object v0
.end method

.method static a(Lam/b;Lt/P;Lu/P;)[Lu/I;
    .registers 15

    const/16 v11, 0xa

    const/4 v8, 0x0

    invoke-virtual {p0, v11}, Lam/b;->l(I)I

    move-result v9

    new-array v10, v9, [Lu/I;

    const/4 v0, 0x0

    move v2, v8

    move-object v1, v0

    :goto_c
    if-ge v2, v9, :cond_5e

    invoke-virtual {p0, v11, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    if-eqz v1, :cond_5f

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lam/g;->e(Lam/b;I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v1, v4}, Lam/g;->e(Lam/b;I)I

    move-result v4

    :goto_1e
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v7

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_5b

    if-lez v7, :cond_4f

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p1, v1}, Lt/P;->c(I)F

    move-result v1

    :goto_32
    invoke-virtual {p1}, Lt/P;->b()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v7, v5, :cond_54

    invoke-virtual {p1, v7}, Lt/P;->c(I)F

    move-result v5

    :goto_3e
    move v6, v5

    move v5, v1

    :goto_40
    invoke-virtual {p1, v7}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lu/I;->a(Lam/b;Lt/L;IIIFFLu/P;)Lu/I;

    move-result-object v1

    aput-object v1, v10, v2

    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_c

    :cond_4f
    invoke-virtual {p1, v7}, Lt/P;->c(I)F

    move-result v1

    goto :goto_32

    :cond_54
    add-int/lit8 v5, v7, -0x1

    invoke-virtual {p1, v5}, Lt/P;->c(I)F

    move-result v5

    goto :goto_3e

    :cond_5b
    const/4 v6, 0x0

    move v5, v6

    goto :goto_40

    :cond_5e
    return-object v10

    :cond_5f
    move v4, v8

    move v3, v8

    goto :goto_1e
.end method

.method private static a(Lam/b;Lu/P;Lu/P;)[Lu/P;
    .registers 11

    const/16 v7, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0, v7}, Lam/b;->l(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lu/P;

    new-instance v3, Lu/P;

    invoke-direct {v3, p1}, Lu/P;-><init>(Lu/P;)V

    aput-object v3, v2, v0

    add-int/lit8 v3, v1, 0x1

    new-instance v4, Lu/P;

    invoke-direct {v4, p2}, Lu/P;-><init>(Lu/P;)V

    aput-object v4, v2, v3

    :goto_1b
    if-ge v0, v1, :cond_2e

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lu/P;

    invoke-virtual {p0, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2e
    return-object v2
.end method

.method private b(Lt/L;DZ)Ljava/util/List;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lu/x;->g:Lt/S;

    const-wide/high16 v2, 0x3ff0

    add-double v2, v2, p2

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v2

    invoke-virtual {v1, v2}, Lt/S;->a(Lt/V;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    :goto_1a
    return-object v1

    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lt/L;

    invoke-direct {v8}, Lt/L;-><init>()V

    new-instance v9, Lt/L;

    invoke-direct {v9}, Lt/L;-><init>()V

    new-instance v10, Lt/L;

    invoke-direct {v10}, Lt/L;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    :goto_31
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_ac

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/ab;

    invoke-virtual {v1}, Lt/ab;->a()I

    move-result v2

    add-int/lit8 v11, v2, -0x1

    const/4 v2, 0x0

    move v6, v2

    :goto_45
    if-ge v6, v11, :cond_a8

    invoke-virtual {v1, v6, v8}, Lt/ab;->a(ILt/L;)V

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2, v9}, Lt/ab;->a(ILt/L;)V

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0, v10}, Lt/L;->a(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v2

    float-to-double v12, v2

    cmpg-double v2, v12, p2

    if-gez v2, :cond_8d

    const/4 v5, 0x0

    if-nez p4, :cond_63

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_91

    :cond_63
    new-instance v2, Lu/B;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lu/B;-><init>(Lu/y;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6c
    if-eqz v2, :cond_8d

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lu/B;->a(Lu/B;Lu/x;)Lu/x;

    invoke-static {v2, v12, v13}, Lu/B;->a(Lu/B;D)D

    invoke-virtual {v1}, Lt/ab;->b()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v2, v5}, Lu/B;->a(Lu/B;I)I

    invoke-static {v10}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v5

    invoke-static {v2, v5}, Lu/B;->a(Lu/B;Lt/L;)Lt/L;

    invoke-static {v8, v9}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v5

    float-to-double v12, v5

    invoke-static {v2, v12, v13}, Lu/B;->b(Lu/B;D)D

    :cond_8d
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_45

    :cond_91
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/B;

    invoke-static {v2}, Lu/B;->b(Lu/B;)D

    move-result-wide v14

    cmpg-double v2, v12, v14

    if-gez v2, :cond_b8

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu/B;

    goto :goto_6c

    :cond_a8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_31

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

.method static b([Lu/I;)Z
    .registers 7

    const/4 v1, 0x0

    array-length v3, p0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_28

    aget-object v0, p0, v2

    invoke-virtual {v0}, Lu/I;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/L;

    invoke-virtual {v0}, Lu/L;->a()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_f

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_28
    move v0, v1

    goto :goto_23
.end method

.method static b(Lam/b;)[Lt/o;
    .registers 15

    const/16 v13, 0x9

    const/4 v12, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v12}, Lam/b;->l(I)I

    move-result v7

    move v0, v2

    move v1, v2

    :goto_a
    if-ge v0, v7, :cond_1d

    invoke-virtual {p0, v12, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v13}, Lam/b;->c(I)[B

    move-result-object v3

    array-length v3, v3

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    new-array v8, v1, [Lt/o;

    move v6, v2

    move v4, v2

    :goto_21
    if-ge v6, v7, :cond_84

    invoke-virtual {p0, v12, v6}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v1

    add-int/lit8 v0, v4, 0x1

    new-instance v9, Lt/o;

    invoke-direct {v9, v3, v1}, Lt/o;-><init>(II)V

    aput-object v9, v8, v4

    invoke-virtual {v5, v13}, Lam/b;->c(I)[B

    move-result-object v9

    if-eqz v9, :cond_7f

    array-length v10, v9

    move v4, v3

    move v3, v1

    move v1, v2

    :goto_50
    if-ge v1, v10, :cond_7f

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

    add-int/lit8 v5, v0, 0x1

    new-instance v11, Lt/o;

    invoke-direct {v11, v4, v3}, Lt/o;-><init>(II)V

    aput-object v11, v8, v0

    move v0, v5

    goto :goto_50

    :cond_7f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v4, v0

    goto :goto_21

    :cond_84
    return-object v8
.end method

.method private static c(Lam/b;)Ljava/util/List;
    .registers 9

    const/16 v7, 0x1a

    const/4 v6, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v7}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    if-ge v1, v3, :cond_31

    invoke-virtual {p0, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6}, Lam/b;->k(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v0, v6}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_23
    new-instance v5, Lu/N;

    invoke-direct {v5, v4, v0}, Lu/N;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2f
    const/4 v0, 0x0

    goto :goto_23

    :cond_31
    return-object v2
.end method

.method private static c([Lu/I;)V
    .registers 4

    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_19

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lu/I;->a(Lu/I;)V

    aget-object v1, p0, v0

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lu/I;->b(Lu/I;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private static d([Lu/I;)V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_33

    aget-object v0, p0, v1

    invoke-virtual {v0}, Lu/I;->v()Ljava/util/List;

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

    check-cast v0, Lu/j;

    invoke-virtual {v0}, Lu/j;->f()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lu/x;->a(Lu/I;)Lu/j;

    move-result-object v3

    invoke-virtual {v0, v3}, Lu/j;->a(Lu/j;)V

    goto :goto_11

    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_33
    return-void
.end method


# virtual methods
.method public A()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    invoke-direct {p0}, Lu/x;->H()V

    return-void
.end method

.method public B()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->u:Z

    return v0
.end method

.method C()Lu/g;
    .registers 2

    iget-object v0, p0, Lu/x;->w:Lu/g;

    return-object v0
.end method

.method public D()[Lu/b;
    .registers 2

    iget-object v0, p0, Lu/x;->x:[Lu/b;

    return-object v0
.end method

.method public E()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->A:Z

    return v0
.end method

.method public F()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->B:Z

    return v0
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->C:Z

    return v0
.end method

.method public a(Lu/B;)D
    .registers 6

    iget-object v0, p0, Lu/x;->m:[D

    invoke-virtual {p1}, Lu/B;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lu/x;->f:Lt/P;

    invoke-virtual {p1}, Lu/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v2

    invoke-static {p1}, Lu/B;->a(Lu/B;)Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public a(D)I
    .registers 4

    iget-object v0, p0, Lu/x;->m:[D

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    if-gez v0, :cond_b

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :cond_b
    return v0
.end method

.method public a(Lt/L;D)Lu/B;
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lu/x;->b(Lt/L;DZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/B;

    goto :goto_8
.end method

.method public a(I)Lu/I;
    .registers 3

    iget-object v0, p0, Lu/x;->e:[Lu/I;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lu/x;->k:Ljava/lang/String;

    return-void
.end method

.method a(Lu/g;)V
    .registers 2

    iput-object p1, p0, Lu/x;->w:Lu/g;

    return-void
.end method

.method public a()Z
    .registers 2

    iget v0, p0, Lu/x;->y:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lt/L;DZ)[Lu/B;
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lu/x;->b(Lt/L;DZ)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    new-array v0, v0, [Lu/B;

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lu/B;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/B;

    if-eqz p4, :cond_a

    sget-object v1, Lu/x;->E:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method public b(I)D
    .registers 4

    iget-object v0, p0, Lu/x;->m:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public b(Lu/B;)D
    .registers 8

    iget-object v0, p0, Lu/x;->n:[D

    invoke-virtual {p1}, Lu/B;->e()I

    move-result v1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lu/x;->f:Lt/P;

    invoke-virtual {p1}, Lu/B;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v2

    invoke-static {p1}, Lu/B;->a(Lu/B;)Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {p1}, Lu/B;->a(Lu/B;)Lt/L;

    move-result-object v4

    invoke-virtual {v4}, Lt/L;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Lt/L;->a(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public b(D)I
    .registers 14

    const/4 v1, 0x0

    iget-object v2, p0, Lu/x;->l:[Lu/A;

    new-instance v0, Lu/A;

    invoke-virtual {p0, p1, p2}, Lu/x;->a(D)I

    move-result v3

    invoke-direct {v0, v3, v1}, Lu/A;-><init>(II)V

    new-instance v3, Lu/z;

    invoke-direct {v3, p0}, Lu/z;-><init>(Lu/x;)V

    invoke-static {v2, v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1a

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :cond_1a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_21

    move v0, v1

    :goto_20
    return v0

    :cond_21
    iget-object v1, p0, Lu/x;->m:[D

    aget-object v3, v2, v0

    iget v3, v3, Lu/A;->a:I

    aget-wide v3, v1, v3

    iget-object v1, p0, Lu/x;->m:[D

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v2, v5

    iget v5, v5, Lu/A;->a:I

    aget-wide v5, v1, v5

    add-int/lit8 v1, v0, 0x1

    aget-object v1, v2, v1

    iget v1, v1, Lu/A;->b:I

    int-to-double v7, v1

    sub-double v9, v5, p1

    sub-double v3, v5, v3

    div-double v3, v9, v3

    aget-object v1, v2, v0

    iget v1, v1, Lu/A;->b:I

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    iget v0, v0, Lu/A;->b:I

    sub-int v0, v1, v0

    int-to-double v0, v0

    mul-double/2addr v0, v3

    add-double/2addr v0, v7

    double-to-int v0, v0

    goto :goto_20
.end method

.method public b()Z
    .registers 3

    iget v0, p0, Lu/x;->c:I

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

    iget-object v0, p0, Lu/x;->n:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lu/x;->y:I

    return v0
.end method

.method public c(D)Ljava/util/Collection;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    :goto_6
    iget-object v2, p0, Lu/x;->h:[Lu/R;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lu/R;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lu/R;->i()Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lu/R;->j()D

    move-result-wide v2

    cmpl-double v2, v2, p1

    if-lez v2, :cond_34

    iget-object v2, p0, Lu/x;->h:[Lu/R;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_37
    return-object v1
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lu/x;->b:I

    return v0
.end method

.method public d(I)V
    .registers 2

    iput p1, p0, Lu/x;->i:I

    return-void
.end method

.method public e()F
    .registers 2

    iget v0, p0, Lu/x;->r:F

    return v0
.end method

.method public f()F
    .registers 2

    iget v0, p0, Lu/x;->s:F

    return v0
.end method

.method public g()Z
    .registers 2

    iget v0, p0, Lu/x;->c:I

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

    iget v0, p0, Lu/x;->c:I

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

    const/4 v0, 0x1

    iget v1, p0, Lu/x;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->d:Z

    return v0
.end method

.method public k()I
    .registers 2

    iget-object v0, p0, Lu/x;->e:[Lu/I;

    array-length v0, v0

    return v0
.end method

.method public l()Lu/P;
    .registers 3

    iget-object v0, p0, Lu/x;->h:[Lu/R;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lu/x;->h:[Lu/R;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public m()Lu/P;
    .registers 3

    iget-object v0, p0, Lu/x;->h:[Lu/R;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lu/x;->h:[Lu/R;

    iget-object v1, p0, Lu/x;->h:[Lu/R;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_5
.end method

.method public n()Lt/P;
    .registers 2

    iget-object v0, p0, Lu/x;->f:Lt/P;

    return-object v0
.end method

.method public o()I
    .registers 2

    iget v0, p0, Lu/x;->o:I

    return v0
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lu/x;->p:I

    return v0
.end method

.method public q()I
    .registers 2

    iget v0, p0, Lu/x;->v:I

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lu/x;->i:I

    return v0
.end method

.method public s()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lu/x;->z:Ljava/util/List;

    return-object v0
.end method

.method public t()Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v1

    :goto_f
    return v0

    :cond_10
    iget-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/C;

    invoke-virtual {v0}, Lu/C;->a()I

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v0}, Lu/C;->a()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2f

    :cond_2d
    move v0, v1

    goto :goto_f

    :cond_2f
    move v0, v2

    goto :goto_f
.end method

.method public u()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lu/x;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public v()[Lu/R;
    .registers 2

    iget-object v0, p0, Lu/x;->h:[Lu/R;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/x;->k:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu/x;->D:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .registers 2

    iget-boolean v0, p0, Lu/x;->q:Z

    return v0
.end method

.method public z()J
    .registers 3

    iget-wide v0, p0, Lu/x;->t:J

    return-wide v0
.end method
