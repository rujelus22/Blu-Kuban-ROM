.class public Lcom/google/android/maps/driveabout/vector/aH;
.super Lcom/google/android/maps/driveabout/vector/af;


# static fields
.field private static final O:[Lcom/google/android/maps/driveabout/vector/aK;

.field private static final P:[Lcom/google/android/maps/driveabout/vector/aK;

.field private static final q:Lt/Y;

.field private static final r:Lt/ac;

.field private static final s:Lt/ac;

.field private static final t:Lt/ac;

.field private static final u:Lt/ad;

.field private static final v:Lt/Z;

.field private static final w:Lt/Z;

.field private static final x:Lt/Z;


# instance fields
.field private A:Lt/n;

.field private B:Lcom/google/android/maps/driveabout/vector/di;

.field private final C:Ljava/lang/String;

.field private final D:Z

.field private E:Z

.field private F:F

.field private G:Z

.field private final H:[Lcom/google/android/maps/driveabout/vector/aK;

.field private I:I

.field private J:Lcom/google/android/maps/driveabout/vector/f;

.field private K:Z

.field private L:F

.field private final M:F

.field private final N:[F

.field protected i:Lt/a;

.field protected j:Lcom/google/android/maps/driveabout/vector/ah;

.field protected k:Lcom/google/android/maps/driveabout/vector/ah;

.field protected l:Lcom/google/android/maps/driveabout/vector/aK;

.field protected m:F

.field protected n:F

.field protected o:F

.field protected p:F

.field private y:Lt/a;

.field private z:Lt/n;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/16 v12, 0xc

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    new-instance v0, Lt/Y;

    const/4 v3, 0x0

    new-array v4, v2, [I

    invoke-direct {v0, v2, v3, v4, v2}, Lt/Y;-><init>(IF[II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->q:Lt/Y;

    new-instance v0, Lt/ac;

    const/high16 v3, -0x100

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->q:Lt/Y;

    invoke-direct {v0, v3, v4}, Lt/ac;-><init>(ILt/Y;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->r:Lt/ac;

    new-instance v0, Lt/ac;

    const v3, -0xffff01

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->q:Lt/Y;

    invoke-direct {v0, v3, v4}, Lt/ac;-><init>(ILt/Y;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->s:Lt/ac;

    new-instance v0, Lt/ac;

    const/high16 v3, -0x1

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->q:Lt/Y;

    invoke-direct {v0, v3, v4}, Lt/ac;-><init>(ILt/Y;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->t:Lt/ac;

    new-instance v0, Lt/ad;

    const/16 v3, 0xa

    const v4, 0x3f99999a

    const/high16 v5, 0x3f80

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lt/ad;-><init>(IIIFFI)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->u:Lt/ad;

    new-instance v3, Lt/Z;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/aH;->u:Lt/ad;

    sget-object v9, Lcom/google/android/maps/driveabout/vector/aH;->r:Lt/ac;

    move v4, v1

    move v5, v12

    move-object v6, v11

    move-object v7, v11

    move-object v10, v11

    invoke-direct/range {v3 .. v10}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/aH;->v:Lt/Z;

    new-instance v3, Lt/Z;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/aH;->u:Lt/ad;

    sget-object v9, Lcom/google/android/maps/driveabout/vector/aH;->t:Lt/ac;

    move v4, v1

    move v5, v12

    move-object v6, v11

    move-object v7, v11

    move-object v10, v11

    invoke-direct/range {v3 .. v10}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/aH;->w:Lt/Z;

    new-instance v3, Lt/Z;

    sget-object v8, Lcom/google/android/maps/driveabout/vector/aH;->u:Lt/ad;

    sget-object v9, Lcom/google/android/maps/driveabout/vector/aH;->s:Lt/ac;

    move v4, v1

    move v5, v12

    move-object v6, v11

    move-object v7, v11

    move-object v10, v11

    invoke-direct/range {v3 .. v10}, Lt/Z;-><init>(II[I[Lt/Y;Lt/ad;Lt/ac;Lt/Y;)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/aH;->x:Lt/Z;

    new-array v0, v2, [Lcom/google/android/maps/driveabout/vector/aK;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->O:[Lcom/google/android/maps/driveabout/vector/aK;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aK;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aJ;->d:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/al;->a:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/al;->a:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aJ;->e:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/al;->c:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/aJ;->c:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/al;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aH;->P:[Lcom/google/android/maps/driveabout/vector/aK;

    return-void
.end method

.method constructor <init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V
    .registers 22

    invoke-interface {p1}, Lt/l;->e()Lt/Z;

    move-result-object v4

    invoke-interface {p1}, Lt/l;->i()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/google/android/maps/driveabout/vector/af;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Lt/Z;FFIZ)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->N:[F

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/aH;->C:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/aH;->y:Lt/a;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->D:Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-nez v1, :cond_31

    sget-object p12, Lcom/google/android/maps/driveabout/vector/aH;->O:[Lcom/google/android/maps/driveabout/vector/aK;

    :cond_31
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/al;)V

    :cond_4d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->G:Z

    const/4 v1, 0x0

    if-eqz p10, :cond_5d

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v2

    invoke-virtual/range {p10 .. p10}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_5d
    if-eqz p11, :cond_69

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v2

    invoke-virtual/range {p11 .. p11}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    :cond_69
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->M:F

    return-void
.end method

.method static a(Lt/Z;Lcom/google/android/maps/driveabout/vector/bG;F)I
    .registers 6

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/bG;->e:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bG;->f:I

    iget v2, p1, Lcom/google/android/maps/driveabout/vector/bG;->g:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/google/android/maps/driveabout/vector/af;->a(Lt/Z;FIIF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/aH;
    .registers 21

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v7

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->c()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v1, :cond_e3

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->v:Lt/Z;

    invoke-virtual {v7}, Lt/af;->i()Lt/V;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lt/V;->a(I)Lt/L;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aJ;->f:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/al;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    move-object v6, v0

    move-object v8, v1

    :goto_22
    const/4 v0, 0x1

    new-array v13, v0, [Lcom/google/android/maps/driveabout/vector/aK;

    const/4 v0, 0x0

    aput-object v6, v13, v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v11, Lcom/google/android/maps/driveabout/vector/bG;->r:Lcom/google/android/maps/driveabout/vector/bG;

    new-instance v12, Lcom/google/android/maps/driveabout/vector/ak;

    const/high16 v0, 0x4080

    invoke-direct {v12, v0}, Lcom/google/android/maps/driveabout/vector/ak;-><init>(F)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v0

    invoke-static {v4, v11, v0}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/bG;F)I

    move-result v3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v7}, Lt/af;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v11, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v7}, Lt/af;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v11, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-virtual {v7}, Lt/af;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v11, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->d()I

    move-result v0

    if-lez v0, :cond_aa

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/am;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v11, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/am;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_aa
    new-instance v12, Lcom/google/android/maps/driveabout/vector/ah;

    iget-object v0, v6, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ao;->c:Lcom/google/android/maps/driveabout/vector/ao;

    invoke-direct {v12, v9, v0, v1}, Lcom/google/android/maps/driveabout/vector/ah;-><init>(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/vector/al;Lcom/google/android/maps/driveabout/vector/ao;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v14, Lcom/google/android/maps/driveabout/vector/aH;

    new-instance v15, Lt/j;

    const/4 v0, 0x0

    invoke-direct {v15, v0}, Lt/j;-><init>(Lt/Z;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Lt/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    const/4 v6, 0x0

    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    const/4 v0, 0x1

    invoke-direct {v14, v0}, Lcom/google/android/maps/driveabout/vector/aH;->c(Z)V

    move-object v0, v14

    :goto_e2
    return-object v0

    :cond_e3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->c()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v1, :cond_102

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->w:Lt/Z;

    invoke-virtual {v7}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0}, Lt/V;->e()Lt/L;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aJ;->g:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/al;->c:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    move-object v6, v0

    move-object v8, v1

    goto/16 :goto_22

    :cond_102
    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->c()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    if-eq v0, v1, :cond_112

    invoke-interface/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->c()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->c:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v1, :cond_129

    :cond_112
    sget-object v4, Lcom/google/android/maps/driveabout/vector/aH;->x:Lt/Z;

    invoke-virtual {v7}, Lt/af;->i()Lt/V;

    move-result-object v0

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aK;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aJ;->h:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/al;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-direct {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    move-object v6, v0

    move-object v8, v1

    goto/16 :goto_22

    :cond_129
    const/4 v0, 0x0

    goto :goto_e2
.end method

.method public static a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Landroid/graphics/Bitmap;FLt/L;ZLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/aH;
    .registers 28

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lt/M;->e()Lt/Z;

    move-result-object v4

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p6

    invoke-static {v0, v1, v3, v4, v2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;Ljava/lang/String;Lt/Z;Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual/range {p0 .. p0}, Lt/M;->e()Lt/Z;

    move-result-object v3

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v4

    move-object/from16 v0, p9

    invoke-static {v3, v0, v4}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/Z;Lcom/google/android/maps/driveabout/vector/bG;F)I

    move-result v6

    new-instance v3, Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lt/M;->e()Lt/Z;

    move-result-object v7

    move-object/from16 v0, p9

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/bG;->d:Lcom/google/android/maps/driveabout/vector/cu;

    move-object/from16 v4, p8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/ah;-><init>(Lcom/google/android/maps/driveabout/vector/cs;Ljava/lang/String;ILt/Z;Lcom/google/android/maps/driveabout/vector/cu;)V

    move-object v15, v3

    :cond_37
    if-eqz v15, :cond_3f

    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/ah;->c()Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_3f
    if-nez p2, :cond_43

    const/4 v3, 0x0

    :goto_42
    return-object v3

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz p2, :cond_14a

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v3

    invoke-virtual {v3}, Lz/l;->x()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, p3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_115

    move-object/from16 v0, p9

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bG;->m:F

    mul-float v3, v3, p3

    :goto_64
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v4

    mul-float/2addr v3, v4

    new-instance v14, Lcom/google/android/maps/driveabout/vector/ah;

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    invoke-direct {v14, v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/ah;-><init>(Landroid/graphics/Bitmap;FLcom/google/android/maps/driveabout/vector/cx;)V

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lt/M;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_95
    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ce

    if-nez v15, :cond_ce

    invoke-virtual/range {p0 .. p0}, Lt/M;->c()Lt/af;

    move-result-object v4

    invoke-virtual {v4}, Lt/af;->b()I

    move-result v4

    const/16 v5, 0xe

    if-lt v4, v5, :cond_ce

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lt/L;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lt/M;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_ce
    const/4 v13, 0x0

    sget-object v16, Lcom/google/android/maps/driveabout/vector/aH;->P:[Lcom/google/android/maps/driveabout/vector/aK;

    move-object v12, v3

    :goto_d2
    invoke-virtual/range {p0 .. p0}, Lt/M;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_151

    invoke-virtual/range {p0 .. p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_151

    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/bG;->p:Z

    if-eqz v3, :cond_151

    new-instance v17, Lcom/google/android/maps/driveabout/vector/ae;

    new-instance v3, Lt/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p4

    invoke-direct/range {v3 .. v10}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lt/M;->s()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lt/M;->t()F

    move-result v11

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v8, v3

    move/from16 v12, p5

    invoke-direct/range {v4 .. v16}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    move-object/from16 v3, v17

    goto/16 :goto_42

    :cond_115
    move-object/from16 v0, p9

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bG;->n:F

    mul-float v3, v3, p3

    goto/16 :goto_64

    :cond_11d
    invoke-virtual/range {p0 .. p0}, Lt/M;->c()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v3

    const/16 v4, 0xd

    if-le v3, v4, :cond_144

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lt/L;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lt/M;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_95

    :cond_144
    invoke-virtual/range {p0 .. p0}, Lt/M;->g()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_95

    :cond_14a
    const/4 v13, 0x1

    sget-object v16, Lcom/google/android/maps/driveabout/vector/aH;->O:[Lcom/google/android/maps/driveabout/vector/aK;

    move-object v12, v4

    move-object v14, v15

    move-object v15, v3

    goto :goto_d2

    :cond_151
    new-instance v17, Lcom/google/android/maps/driveabout/vector/aH;

    new-instance v3, Lt/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p4

    invoke-direct/range {v3 .. v10}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lt/M;->s()F

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lt/M;->t()F

    move-result v11

    move-object/from16 v4, v17

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v12

    move-object v8, v3

    move/from16 v12, p5

    invoke-direct/range {v4 .. v16}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    move-object/from16 v3, v17

    goto/16 :goto_42
.end method

.method public static a(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;ZLcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/aH;
    .registers 21

    invoke-virtual {p0}, Lt/M;->v()Lt/A;

    move-result-object v1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lt/A;Lt/l;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/ah;

    move-result-object v11

    if-eqz v11, :cond_19

    invoke-virtual {v11}, Lcom/google/android/maps/driveabout/vector/ah;->c()Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return-object v1

    :cond_1b
    const/4 v12, 0x0

    invoke-virtual {p0}, Lt/M;->w()Lt/A;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {p0}, Lt/M;->w()Lt/A;

    move-result-object v1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lt/A;Lt/l;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/ah;

    move-result-object v12

    if-nez v12, :cond_37

    const/4 v1, 0x0

    goto :goto_1a

    :cond_37
    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/vector/ah;->c()Z

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v12, 0x0

    :cond_3e
    invoke-virtual {p0}, Lt/M;->x()[Lt/c;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_88

    if-eqz v12, :cond_88

    sget-object v13, Lcom/google/android/maps/driveabout/vector/aH;->P:[Lcom/google/android/maps/driveabout/vector/aK;

    :cond_49
    if-eqz v12, :cond_4f

    array-length v1, v13

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b9

    :cond_4f
    const/4 v10, 0x1

    :goto_50
    invoke-virtual {p0}, Lt/M;->u()[Lt/a;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v5, v1, v2

    invoke-virtual {v5}, Lt/a;->b()Lt/L;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lt/M;Lt/L;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lt/M;->z()Z

    move-result v1

    if-eqz v1, :cond_bb

    invoke-virtual {p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_bb

    move-object/from16 v0, p6

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bG;->p:Z

    if-eqz v1, :cond_bb

    new-instance v1, Lcom/google/android/maps/driveabout/vector/ae;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lt/M;->s()F

    move-result v7

    invoke-virtual {p0}, Lt/M;->t()F

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(Lt/M;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    goto :goto_1a

    :cond_88
    invoke-virtual {p0}, Lt/M;->x()[Lt/c;

    move-result-object v1

    array-length v1, v1

    new-array v13, v1, [Lcom/google/android/maps/driveabout/vector/aK;

    const/4 v1, 0x0

    :goto_90
    array-length v2, v13

    if-ge v1, v2, :cond_49

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aK;

    invoke-virtual {p0}, Lt/M;->x()[Lt/c;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lt/c;->d()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/aJ;->a(I)Lcom/google/android/maps/driveabout/vector/aJ;

    move-result-object v3

    invoke-virtual {p0}, Lt/M;->x()[Lt/c;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lt/c;->a()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/al;->a(I)Lcom/google/android/maps/driveabout/vector/al;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/aK;-><init>(Lcom/google/android/maps/driveabout/vector/aJ;Lcom/google/android/maps/driveabout/vector/al;)V

    aput-object v2, v13, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_b9
    const/4 v10, 0x0

    goto :goto_50

    :cond_bb
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aH;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lt/M;->s()F

    move-result v7

    invoke-virtual {p0}, Lt/M;->t()F

    move-result v8

    move-object v2, p0

    move-object v3, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v13}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    goto/16 :goto_1a
.end method

.method public static a(Lt/X;ILcom/google/android/maps/driveabout/vector/bF;Lt/L;Lt/L;ZLcom/google/android/maps/driveabout/vector/bG;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;)Lcom/google/android/maps/driveabout/vector/aH;
    .registers 24

    invoke-virtual/range {p0 .. p1}, Lt/X;->c(I)Lt/A;

    move-result-object v0

    const-string v9, ""

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    invoke-virtual {v0}, Lt/A;->b()I

    move-result v1

    if-ge v2, v1, :cond_39

    invoke-virtual {v0, v2}, Lt/A;->a(I)Lt/B;

    move-result-object v1

    invoke-virtual {v1}, Lt/B;->a()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return-object v0

    :cond_1a
    invoke-virtual {v1}, Lt/B;->b()Z

    move-result v3

    if-eqz v3, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lt/B;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_35
    add-int/lit8 v2, v2, 0x1

    move-object v9, v1

    goto :goto_8

    :cond_39
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_41

    const/4 v0, 0x0

    goto :goto_19

    :cond_41
    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lt/A;Lt/l;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/cx;Lcom/google/android/maps/driveabout/vector/cs;Lcom/google/android/maps/driveabout/vector/bG;)Lcom/google/android/maps/driveabout/vector/ah;

    move-result-object v11

    if-nez v11, :cond_51

    const/4 v0, 0x0

    goto :goto_19

    :cond_51
    new-instance v14, Lcom/google/android/maps/driveabout/vector/aH;

    new-instance v0, Lt/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v7}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    if-nez p4, :cond_78

    const/4 v6, 0x0

    :goto_63
    const/high16 v7, -0x4080

    const/high16 v8, -0x4080

    const/4 v10, 0x0

    const/4 v12, 0x0

    sget-object v13, Lcom/google/android/maps/driveabout/vector/aH;->O:[Lcom/google/android/maps/driveabout/vector/aK;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move-object v4, v9

    move-object v5, v0

    move/from16 v9, p5

    invoke-direct/range {v1 .. v13}, Lcom/google/android/maps/driveabout/vector/aH;-><init>(Lt/l;Lcom/google/android/maps/driveabout/vector/bF;Ljava/lang/String;Lt/a;Lt/a;FFZZLcom/google/android/maps/driveabout/vector/ah;Lcom/google/android/maps/driveabout/vector/ah;[Lcom/google/android/maps/driveabout/vector/aK;)V

    move-object v0, v14

    goto :goto_19

    :cond_78
    new-instance v1, Lt/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v8}, Lt/a;-><init>(Lt/L;IFLt/L;FFF)V

    move-object v6, v1

    goto :goto_63

    :cond_87
    move-object v1, v9

    goto :goto_35
.end method

.method private static a(Lt/M;Lt/L;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/M;->a()Lt/m;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lt/M;->a()Lt/m;

    move-result-object v0

    invoke-virtual {v0}, Lt/m;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lt/M;->a()Lt/m;

    move-result-object v0

    invoke-virtual {v0}, Lt/m;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_20
    invoke-virtual {p0}, Lt/M;->v()Lt/A;

    move-result-object v3

    invoke-virtual {v3}, Lt/A;->b()I

    move-result v3

    if-ge v0, v3, :cond_42

    invoke-virtual {p0}, Lt/M;->v()Lt/A;

    move-result-object v3

    invoke-virtual {v3, v0}, Lt/A;->a(I)Lt/B;

    move-result-object v3

    invoke-virtual {v3}, Lt/B;->b()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3}, Lt/B;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lt/M;->w()Lt/A;

    move-result-object v0

    invoke-virtual {v0}, Lt/A;->b()I

    move-result v0

    if-ge v1, v0, :cond_64

    invoke-virtual {p0}, Lt/M;->w()Lt/A;

    move-result-object v0

    invoke-virtual {v0, v1}, Lt/A;->a(I)Lt/B;

    move-result-object v0

    invoke-virtual {v0}, Lt/B;->b()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-virtual {v0}, Lt/B;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_64
    invoke-virtual {p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_88

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lt/M;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_88
    invoke-virtual {p0}, Lt/M;->c()Lt/af;

    move-result-object v0

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lt/L;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    :cond_af
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/t;)Lt/n;
    .registers 9

    const/high16 v3, 0x42b4

    const/high16 v2, 0x4387

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->a()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->c()F

    move-result v0

    cmpg-float v1, v0, v2

    if-gez v1, :cond_8e

    add-float/2addr v0, v3

    move v1, v0

    :goto_1a
    cmpg-float v0, v1, v2

    if-gez v0, :cond_91

    add-float v0, v1, v3

    :goto_20
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v2}, Lt/a;->b()Lt/L;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v2

    sget-object v3, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    invoke-virtual {p1, v4, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Lt/L;->b(FF)V

    sget-object v4, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/bX;->b:Lt/L;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    invoke-virtual {p1, v5, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v5

    invoke-virtual {v4, v1, v5}, Lt/L;->b(FF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->c:Lt/L;

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    invoke-virtual {p1, v5, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v5

    invoke-virtual {v1, v0, v5}, Lt/L;->b(FF)V

    sget-object v5, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/bX;->d:Lt/L;

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    invoke-virtual {p1, v6, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v2

    invoke-virtual {v5, v0, v2}, Lt/L;->b(FF)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bX;->e:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v2}, Lt/a;->b()Lt/L;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, v1, Lcom/google/android/maps/driveabout/vector/bX;->f:Lt/L;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v2}, Lt/a;->b()Lt/L;

    move-result-object v2

    invoke-static {v2, v5, v1}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {v0, v3}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v2

    invoke-virtual {v0, v4}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v0

    invoke-virtual {v1, v3}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v3

    invoke-virtual {v1, v4}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    invoke-static {v3, v1, v2, v0}, Lt/n;->a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/n;

    move-result-object v0

    goto :goto_d

    :cond_8e
    sub-float/2addr v0, v2

    move v1, v0

    goto :goto_1a

    :cond_91
    sub-float v0, v1, v2

    goto :goto_20
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 13

    const/high16 v1, 0x1

    const/high16 v4, 0x43b4

    const/high16 v8, 0x4000

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->F:F

    invoke-static {v6, p2, v0, v3}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->J:Lcom/google/android/maps/driveabout/vector/f;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->J:Lcom/google/android/maps/driveabout/vector/f;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/f;->a(Lcom/google/android/maps/driveabout/vector/aT;)I

    move-result v0

    if-ne v0, v1, :cond_23

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->J:Lcom/google/android/maps/driveabout/vector/f;

    :cond_23
    :goto_23
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->a()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->c()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v1

    sub-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_40

    add-float/2addr v0, v4

    :cond_40
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v1}, Lt/a;->c()F

    move-result v1

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->E:Z

    if-nez v3, :cond_157

    const/high16 v3, 0x42b4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_157

    const/high16 v3, 0x4387

    cmpg-float v0, v0, v3

    if-gez v0, :cond_157

    const/high16 v0, 0x4334

    add-float/2addr v0, v1

    :goto_59
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_5e

    sub-float/2addr v0, v4

    :cond_5e
    const/high16 v1, -0x4080

    invoke-interface {v6, v0, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const/high16 v0, -0x3d4c

    const/high16 v1, 0x3f80

    invoke-interface {v6, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :goto_6a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    div-float v1, v0, v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    div-float/2addr v0, v8

    neg-float v5, v1

    neg-float v7, v0

    invoke-interface {v6, v5, v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v5, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :goto_93
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v5, :cond_cf

    sget-object v5, Lcom/google/android/maps/driveabout/vector/aI;->a:[I

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/aJ;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_15a

    move v3, v2

    move v0, v2

    :goto_a8
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/aJ;->d:Lcom/google/android/maps/driveabout/vector/aJ;

    if-eq v5, v7, :cond_b8

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v5, v5, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    if-ne v5, v7, :cond_c7

    :cond_b8
    sget-object v5, Lcom/google/android/maps/driveabout/vector/aI;->b:[I

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v7, v7, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/al;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_170

    :cond_c7
    :goto_c7
    invoke-interface {v6, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_cf
    return-void

    :cond_d0
    move v0, v1

    goto/16 :goto_23

    :cond_d3
    invoke-static {v6, p2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;)V

    goto :goto_6a

    :pswitch_d7
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v5, v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v5

    goto :goto_a8

    :pswitch_eb
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v4

    goto :goto_a8

    :pswitch_f6
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v3

    neg-float v5, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    div-float/2addr v3, v8

    sub-float v3, v0, v3

    move v0, v5

    goto :goto_a8

    :pswitch_108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    neg-float v3, v0

    move v0, v2

    goto :goto_a8

    :pswitch_111
    move v0, v2

    goto :goto_a8

    :pswitch_113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    neg-float v3, v0

    move v0, v4

    goto :goto_a8

    :pswitch_11c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    neg-float v0, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v3

    neg-float v3, v3

    goto/16 :goto_a8

    :pswitch_12c
    move v0, v4

    goto/16 :goto_a8

    :pswitch_12f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    neg-float v0, v0

    goto/16 :goto_a8

    :pswitch_138
    const/high16 v0, -0x3ee0

    goto :goto_c7

    :pswitch_13b
    const/high16 v0, 0x4120

    add-float/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_c7

    :pswitch_146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    div-float/2addr v0, v8

    sub-float v0, v1, v0

    goto/16 :goto_c7

    :cond_151
    move v0, v2

    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_93

    :cond_157
    move v0, v1

    goto/16 :goto_59

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_111
        :pswitch_eb
        :pswitch_108
        :pswitch_f6
        :pswitch_113
        :pswitch_11c
        :pswitch_12c
        :pswitch_12f
        :pswitch_d7
    .end packed-switch

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_138
        :pswitch_13b
        :pswitch_146
    .end packed-switch
.end method

.method private c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aH;->E:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->G:Z

    if-nez v0, :cond_f

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aH;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aH;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_e
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)Z
    .registers 5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->h:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/maps/driveabout/vector/f;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->J:Lcom/google/android/maps/driveabout/vector/f;

    :cond_c
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->G:Z

    return v1
.end method

.method public a(Lt/av;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt/av;->a(Lt/L;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->a_(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->B:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->B:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1e
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 13

    const/high16 v10, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2b

    move v0, v1

    :goto_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    if-eqz v4, :cond_2d

    iget-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->K:Z

    if-eqz v4, :cond_2d

    if-eqz v0, :cond_2d

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->L:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2d

    :cond_2a
    :goto_2a
    return v1

    :cond_2b
    move v0, v2

    goto :goto_16

    :cond_2d
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    if-eqz v4, :cond_44

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v4}, Lt/a;->a()Z

    move-result v4

    if-eqz v4, :cond_44

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->L:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_44

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->A:Lt/n;

    goto :goto_2a

    :cond_44
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->K:Z

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->L:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_257

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_5e
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-nez v4, :cond_e6

    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v3, v0

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    :cond_70
    :goto_70
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bX;->a:Lt/L;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v4}, Lt/a;->b()Lt/L;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->D:Z

    if-eqz v0, :cond_205

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v0

    invoke-virtual {p1, v10, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->F:F

    :goto_95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:Lcom/google/android/maps/driveabout/vector/bF;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:Lcom/google/android/maps/driveabout/vector/bF;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->c:Lcom/google/android/maps/driveabout/vector/bF;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_cd

    instance-of v3, v0, Lt/r;

    if-eqz v3, :cond_cd

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v3

    check-cast v0, Lt/r;

    invoke-virtual {v3, v0}, Lr/l;->d(Lt/r;)Lr/e;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v3}, Lt/a;->b()Lt/L;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v4}, Lt/a;->b()Lt/L;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lr/e;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/L;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Lt/L;->c(I)V

    :cond_cd
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->A:Lt/n;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->a()Z

    move-result v0

    if-eqz v0, :cond_230

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/aH;->b(Lcom/google/android/maps/driveabout/vector/t;)Lt/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    :goto_df
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    if-nez v0, :cond_2a

    move v1, v2

    goto/16 :goto_2a

    :cond_e6
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/ah;->a()F

    move-result v4

    float-to-int v4, v4

    shr-int/lit8 v7, v4, 0x1

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/ah;->b()F

    move-result v4

    float-to-int v4, v4

    shr-int/lit8 v5, v4, 0x1

    if-le v3, v7, :cond_151

    move v6, v3

    :goto_fb
    if-le v0, v5, :cond_153

    move v4, v0

    :goto_fe
    sget-object v8, Lcom/google/android/maps/driveabout/vector/aI;->a:[I

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v9, v9, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/aJ;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_25c

    neg-int v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v0, v6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    :goto_11b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aJ;->d:Lcom/google/android/maps/driveabout/vector/aJ;

    if-eq v0, v4, :cond_12b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aK;->a:Lcom/google/android/maps/driveabout/vector/aJ;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/aJ;->b:Lcom/google/android/maps/driveabout/vector/aJ;

    if-ne v0, v4, :cond_70

    :cond_12b
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aI;->b:[I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v4, v4, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/al;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_270

    goto/16 :goto_70

    :pswitch_13c
    neg-int v0, v3

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    mul-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    add-float/2addr v0, v4

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    goto/16 :goto_70

    :cond_151
    move v6, v7

    goto :goto_fb

    :cond_153
    move v4, v5

    goto :goto_fe

    :pswitch_155
    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto :goto_11b

    :pswitch_160
    neg-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    mul-int/lit8 v0, v7, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto :goto_11b

    :pswitch_172
    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto :goto_11b

    :pswitch_17d
    neg-int v0, v3

    mul-int/lit8 v5, v7, 0x2

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto :goto_11b

    :pswitch_18f
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto/16 :goto_11b

    :pswitch_1a5
    neg-int v4, v3

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v4, v3

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v4, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto/16 :goto_11b

    :pswitch_1bb
    neg-int v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    mul-int/lit8 v4, v7, 0x2

    add-int/2addr v4, v3

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto/16 :goto_11b

    :pswitch_1d1
    neg-int v4, v3

    mul-int/lit8 v8, v7, 0x2

    sub-int/2addr v4, v8

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v4, v3

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    neg-int v4, v0

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto/16 :goto_11b

    :pswitch_1e7
    add-int/lit8 v0, v3, 0xa

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    mul-int/lit8 v4, v7, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    goto/16 :goto_70

    :pswitch_1fc
    neg-int v0, v6

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    int-to-float v0, v6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    goto/16 :goto_70

    :cond_205
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v0

    invoke-virtual {p1, v10, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->F:F

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v3}, Lt/a;->b()Lt/L;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v3

    div-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    goto/16 :goto_95

    :cond_230
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->b()Lt/L;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->N:[F

    invoke-virtual {p1, v0, v3}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->N:[F

    aget v0, v0, v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->N:[F

    aget v3, v3, v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->m:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->n:F

    add-float/2addr v0, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/aH;->o:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/aH;->p:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v4, v0, v5, v3}, Lcom/google/android/maps/driveabout/vector/t;->a(FFFF)Lt/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    goto/16 :goto_df

    :cond_257
    move v0, v2

    move v3, v2

    goto/16 :goto_5e

    nop

    :pswitch_data_25c
    .packed-switch 0x1
        :pswitch_155
        :pswitch_160
        :pswitch_172
        :pswitch_17d
        :pswitch_18f
        :pswitch_1a5
        :pswitch_1bb
        :pswitch_1d1
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_13c
        :pswitch_1e7
        :pswitch_1fc
    .end packed-switch
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/af;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->j:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ah;->b(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->B:Lcom/google/android/maps/driveabout/vector/di;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->B:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    :cond_1e
    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v3, v3

    if-ge v2, v3, :cond_27

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/al;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aH;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    :goto_26
    return v0

    :cond_27
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->y:Lt/a;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->y:Lt/a;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->y:Lt/a;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    array-length v2, v2

    if-le v2, v0, :cond_47

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->I:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->H:[Lcom/google/android/maps/driveabout/vector/aK;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aH;->k:Lcom/google/android/maps/driveabout/vector/ah;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aH;->l:Lcom/google/android/maps/driveabout/vector/aK;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aK;->b:Lcom/google/android/maps/driveabout/vector/al;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/ah;->a(Lcom/google/android/maps/driveabout/vector/al;)V

    :cond_47
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aH;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    goto :goto_26

    :cond_4d
    move v0, v1

    goto :goto_26
.end method

.method public n()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->M:F

    return v0
.end method

.method public o()Lt/W;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->z:Lt/n;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->C:Ljava/lang/String;

    return-object v0
.end method

.method public y()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aH;->i:Lt/a;

    invoke-virtual {v0}, Lt/a;->a()Z

    move-result v0

    goto :goto_5
.end method
