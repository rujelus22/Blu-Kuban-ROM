.class public Lcom/google/android/maps/driveabout/vector/cI;
.super Lcom/google/android/maps/driveabout/vector/aE;


# static fields
.field private static final L:Lcom/google/android/maps/driveabout/vector/cB;

.field public static final a:Lz/a;

.field public static final b:Lz/a;


# instance fields
.field private volatile A:Z

.field private final B:Ljava/util/Set;

.field private final C:Lz/g;

.field private final D:Lt/L;

.field private E:Lcom/google/android/maps/driveabout/vector/u;

.field private F:Ljava/util/Set;

.field private G:J

.field private H:Z

.field private final I:Z

.field private final J:Z

.field private final K:Lcom/google/android/maps/driveabout/vector/cB;

.field private M:I

.field private N:J

.field protected volatile c:Lcom/google/android/maps/driveabout/vector/cm;

.field protected volatile d:Z

.field protected final e:Lcom/google/android/maps/driveabout/vector/bF;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Z

.field private final j:I

.field private final k:I

.field private final l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Z

.field private final p:Lcom/google/android/maps/driveabout/vector/cU;

.field private final q:Lcom/google/android/maps/driveabout/vector/cC;

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;

.field private final t:[I

.field private final u:Ljava/util/ArrayList;

.field private final v:[I

.field private final w:Lcom/google/android/maps/driveabout/vector/cL;

.field private x:Lcom/google/android/maps/driveabout/vector/cz;

.field private y:Lcom/google/android/maps/driveabout/vector/cn;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lz/a;->a([I)Lz/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cI;->a:Lz/a;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aZ;->a:Lz/a;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cI;->a:Lz/a;

    invoke-static {v0, v1}, Lz/a;->a(Lz/a;Lz/a;)Lz/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cI;->b:Lz/a;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cA;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cA;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cI;->L:Lcom/google/android/maps/driveabout/vector/cB;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V
    .registers 21

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cL;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/cL;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->w:Lcom/google/android/maps/driveabout/vector/cL;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    new-instance v1, Lz/g;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lz/g;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->C:Lz/g;

    new-instance v1, Lt/L;

    invoke-direct {v1}, Lt/L;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->D:Lt/L;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->G:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/cI;->K:Lcom/google/android/maps/driveabout/vector/cB;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/cI;->f:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    iput p7, p0, Lcom/google/android/maps/driveabout/vector/cI;->h:I

    iput p8, p0, Lcom/google/android/maps/driveabout/vector/cI;->j:I

    iput p9, p0, Lcom/google/android/maps/driveabout/vector/cI;->k:I

    iput-boolean p10, p0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->l:Z

    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->m:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->n:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->I:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->J:Z

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne p1, v1, :cond_94

    const/4 v1, 0x1

    :goto_5a
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->I:Z

    if-eqz v2, :cond_96

    if-nez v1, :cond_96

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Lcom/google/android/maps/driveabout/vector/bF;

    :goto_6b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    new-array v1, p4, [I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->t:[I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_85
    if-ge v1, p6, :cond_9a

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    :cond_94
    const/4 v1, 0x0

    goto :goto_5a

    :cond_96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Lcom/google/android/maps/driveabout/vector/bF;

    goto :goto_6b

    :cond_9a
    add-int/lit8 v1, p6, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->M:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0xfa0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->N:J

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(Lcom/google/android/maps/driveabout/vector/cI;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cH;)V

    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .registers 5

    const v1, 0x64140

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v2

    if-ge v0, v1, :cond_13

    move v0, v1

    :cond_13
    div-int/lit16 v2, p1, 0x100

    int-to-float v2, v2

    mul-float/2addr v2, v2

    mul-int/lit8 v0, v0, 0x18

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;II)I
    .registers 9

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_3d

    move v1, v2

    :goto_6
    if-ge p3, p4, :cond_20

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->t:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;)I

    move-result v0

    aput v0, v3, p3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->t:[I

    aget v0, v0, p3

    or-int/2addr v1, v0

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v0, v3, :cond_3b

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_2e

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->d:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_30

    :cond_2e
    move v0, v2

    :goto_2f
    return v0

    :cond_30
    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_3b

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p2, v0, :cond_3b

    and-int/lit16 v0, v1, -0x687

    goto :goto_2f

    :cond_3b
    move v0, v1

    goto :goto_2f

    :cond_3d
    move v0, v2

    goto :goto_2f
.end method

.method private a(Ljava/util/Set;Ljava/util/Set;I)I
    .registers 7

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    if-nez p3, :cond_13

    :cond_12
    return p3

    :cond_13
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    add-int/lit8 p3, p3, -0x1

    goto :goto_4
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cI;)Lcom/google/android/maps/driveabout/vector/cC;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lr/l;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 13

    const/16 v7, 0x100

    invoke-static {p1, v7}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v3, 0x2

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cC;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bx;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cI;->L:Lcom/google/android/maps/driveabout/vector/cB;

    const/4 v5, 0x4

    const v6, 0x25d78

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bx;-><init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIILandroid/content/Context;Lr/l;)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lt/m;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 19

    const/16 v1, 0x100

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->j:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-direct {v3, v2, v1}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v4, Lcom/google/android/maps/driveabout/vector/cO;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/google/android/maps/driveabout/vector/cO;-><init>(Lt/m;)V

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cI;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->j:Lcom/google/android/maps/driveabout/vector/cU;

    const/4 v7, 0x0

    const v8, 0x27100

    const/16 v9, 0x100

    const/16 v10, 0x100

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/cB;Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 20

    const/16 v1, 0x100

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    new-instance v2, Lp/e;

    const/4 v4, 0x0

    sget-object v7, Lcom/google/android/maps/driveabout/vector/cI;->a:Lz/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v4, v7}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cI;->a:Lz/a;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lp/e;ZLz/a;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/s;

    const/4 v7, 0x0

    const v8, 0x2bf20

    const/16 v9, 0x100

    const/16 v10, 0x100

    move-object/from16 v2, p1

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/s;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 19

    const/16 v1, 0x100

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_4a

    const/4 v13, 0x1

    :goto_11
    if-eqz v13, :cond_4c

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    new-instance v1, Lp/e;

    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cI;->b:Lz/a;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v4}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;Lz/a;)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cI;->b:Lz/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v13, v2}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lp/e;ZLz/a;)V

    :goto_26
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    if-nez v13, :cond_31

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_5e

    :cond_31
    const/16 v16, 0x1

    :goto_33
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cI;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/bW;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/vector/bW;-><init>()V

    const/16 v7, 0x8

    const v8, 0x186a0

    const/16 v9, 0x100

    const/16 v10, 0x100

    move-object/from16 v2, p0

    move v14, v13

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-object v1

    :cond_4a
    const/4 v13, 0x0

    goto :goto_11

    :cond_4c
    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    new-instance v1, Lp/e;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lp/e;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Set;)V

    sget-object v2, Lz/a;->a:Lz/a;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v13, v2}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lp/e;ZLz/a;)V

    goto :goto_26

    :cond_5e
    const/16 v16, 0x0

    goto :goto_33
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cM;
    .registers 14

    const/16 v7, 0x100

    const/4 v5, 0x0

    invoke-static {p0, v7}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cC;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->d:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-direct {v1, v0, v5}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    const/4 v8, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cI;->L:Lcom/google/android/maps/driveabout/vector/cB;

    const v6, 0x249f0

    move v9, v5

    move v10, v5

    move v11, v5

    move v12, v5

    invoke-direct/range {v0 .. v12}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIZZZZZ)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    iget v3, v3, Lcom/google/android/maps/driveabout/vector/cU;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Lt/L;I)Ljava/util/Set;
    .registers 14

    const/4 v2, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cI;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;Lt/L;)Ljava/util/Set;

    move-result-object v3

    const/4 v0, 0x0

    move-object v4, v1

    move-object v5, v3

    move v1, v2

    move v3, v0

    :goto_19
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7a

    if-lez p3, :cond_7a

    const/16 v0, 0x8

    if-ge v1, v0, :cond_7a

    if-ge v3, v9, :cond_7a

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    const/16 v7, 0xd

    if-gt v0, v7, :cond_54

    if-ge v3, v2, :cond_41

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v8, :cond_4b

    :cond_41
    if-ge v3, v8, :cond_46

    const/4 v0, 0x4

    if-ge v1, v0, :cond_4b

    :cond_46
    if-ge v3, v9, :cond_54

    const/4 v0, 0x6

    if-lt v1, v0, :cond_54

    :cond_4b
    invoke-direct {p0, v5, v6, p3}, Lcom/google/android/maps/driveabout/vector/cI;->b(Ljava/util/Set;Ljava/util/Set;I)I

    move-result v0

    if-eq p3, v0, :cond_7b

    add-int/lit8 v3, v3, 0x1

    move p3, v0

    :cond_54
    :goto_54
    if-eqz v4, :cond_62

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v8, :cond_5e

    if-lt v1, v9, :cond_62

    :cond_5e
    invoke-interface {v5, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :cond_62
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v8, :cond_6c

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    :cond_6c
    if-eqz v4, :cond_72

    invoke-direct {p0, v4, p2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;Lt/L;)Ljava/util/Set;

    move-result-object v4

    :cond_72
    invoke-direct {p0, v5, p2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;Lt/L;)Ljava/util/Set;

    move-result-object v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_7a
    return-object v6

    :cond_7b
    move p3, v0

    goto :goto_54
.end method

.method static a(Ljava/util/Set;)Ljava/util/Set;
    .registers 13

    const/4 v2, -0x1

    const/4 v11, 0x1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v1

    shl-int v6, v11, v1

    add-int/lit8 v7, v6, -0x1

    move v3, v2

    :goto_20
    if-gt v3, v11, :cond_b

    move v1, v2

    :goto_23
    if-gt v1, v11, :cond_44

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v8

    add-int/2addr v8, v1

    if-ltz v8, :cond_2e

    if-lt v8, v6, :cond_31

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_31
    invoke-virtual {v0}, Lt/af;->b()I

    move-result v9

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v10

    add-int/2addr v10, v3

    add-int/2addr v10, v6

    and-int/2addr v10, v7

    invoke-virtual {v0, v9, v10, v8}, Lt/af;->b(III)Lt/af;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_44
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_20

    :cond_48
    return-object v4
.end method

.method private a(Ljava/util/Set;Lt/L;)Ljava/util/Set;
    .registers 7

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v3, v0, p2}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v1
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;Lt/af;)V
    .registers 12

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/high16 v1, 0x4000

    invoke-virtual {p4}, Lt/af;->b()I

    move-result v2

    shr-int/2addr v1, v2

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p4}, Lt/af;->h()Lt/L;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {v0, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/I;)[I

    move-result-object v1

    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private a(Ljava/util/Collection;Lt/L;Ljava/util/Set;I)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v3, v1, p2}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    const/4 v1, 0x1

    move v3, v1

    move-object v4, v0

    move v2, p4

    :goto_35
    if-gt v3, v5, :cond_8

    if-eqz v4, :cond_8

    if-eq v3, v5, :cond_41

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt v0, v2, :cond_6e

    :cond_41
    const/4 v0, 0x0

    move-object v1, v0

    :goto_43
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_47
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lt/af;)V

    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_8

    :cond_60
    if-eqz v1, :cond_47

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v6, v0, p2}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_6e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move-object v1, v0

    goto :goto_43

    :cond_7b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v4, v1

    goto :goto_35
.end method

.method private a(Lt/af;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->C:Lz/g;

    invoke-virtual {v0, p1, p1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-void

    :cond_e
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->g()V

    goto :goto_d
.end method

.method public static b(Landroid/content/res/Resources;I)I
    .registers 6

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method private b(Ljava/util/Set;Ljava/util/Set;I)I
    .registers 6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    if-nez p3, :cond_13

    :cond_12
    return p3

    :cond_13
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p3, p3, -0x1

    goto :goto_4
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 19

    const/16 v1, 0x100

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->b(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    const/16 v10, 0x180

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cI;->L:Lcom/google/android/maps/driveabout/vector/cB;

    const/4 v7, 0x4

    const v8, 0xc350

    const/16 v9, 0x100

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method static b(Ljava/util/Set;)Ljava/util/Set;
    .registers 15

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v9

    :goto_e
    return-object v0

    :cond_f
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v10

    shl-int v5, v3, v10

    add-int/lit8 v11, v5, -0x1

    shr-int/lit8 v12, v5, 0x1

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v1

    goto :goto_2c

    :cond_42
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_46
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v1, v12, :cond_46

    move v2, v3

    :goto_5a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v3, v5

    move v6, v4

    move v7, v5

    :goto_61
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-virtual {v1}, Lt/af;->c()I

    move-result v8

    if-eqz v2, :cond_76

    if-ge v8, v12, :cond_76

    add-int/2addr v8, v5

    :cond_76
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v1}, Lt/af;->d()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1}, Lt/af;->d()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_61

    :cond_8f
    and-int v1, v7, v11

    invoke-virtual {v0, v10, v1, v3}, Lt/af;->b(III)Lt/af;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    and-int v1, v7, v11

    invoke-virtual {v0, v10, v1, v4}, Lt/af;->b(III)Lt/af;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    and-int v1, v6, v11

    invoke-virtual {v0, v10, v1, v3}, Lt/af;->b(III)Lt/af;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    and-int v1, v6, v11

    invoke-virtual {v0, v10, v1, v4}, Lt/af;->b(III)Lt/af;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto/16 :goto_e

    :cond_b6
    move v2, v4

    goto :goto_5a
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/cI;)Lz/g;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->C:Lz/g;

    return-object v0
.end method

.method public static c(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;
    .registers 19

    const/16 v10, 0x14c

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/google/android/maps/driveabout/vector/cI;->b(Landroid/content/res/Resources;I)I

    move-result v5

    mul-int/lit8 v6, v5, 0x2

    const/4 v1, 0x0

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1}, Lcom/google/android/maps/driveabout/vector/cC;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Z)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/cI;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cI;->L:Lcom/google/android/maps/driveabout/vector/cB;

    const/4 v7, 0x2

    const v8, 0xc350

    const/16 v9, 0x100

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/cI;-><init>(Lcom/google/android/maps/driveabout/vector/cU;Lcom/google/android/maps/driveabout/vector/cC;Lcom/google/android/maps/driveabout/vector/cB;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/cI;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cI;->e()V

    return-void
.end method

.method private e()V
    .registers 5

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->M:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->N:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    const/16 v0, 0x6e

    const-string v1, "l"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->M:I

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/cI;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->M:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->N:J

    :cond_29
    return-void
.end method


# virtual methods
.method public a(Lt/at;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/util/Set;)I
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_26

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->i()Lt/V;

    move-result-object v3

    invoke-virtual {p1, v3}, Lt/at;->b(Lt/W;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_26
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/bF;)V

    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/bZ;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->b()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_3d
    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/aZ;

    if-eqz v3, :cond_8

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aZ;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/vector/aZ;->a(Ljava/util/Set;)Z

    goto :goto_8

    :cond_47
    return v1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->c:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cC;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cI;->c:Lcom/google/android/maps/driveabout/vector/cm;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->K:Lcom/google/android/maps/driveabout/vector/cB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->k:I

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/cU;IZ)Lcom/google/android/maps/driveabout/vector/cz;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cz;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->K:Lcom/google/android/maps/driveabout/vector/cB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cB;->a(Lcom/google/android/maps/driveabout/vector/cU;Z)Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->y:Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->y:Lcom/google/android/maps/driveabout/vector/cn;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cn;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cn;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->y:Lcom/google/android/maps/driveabout/vector/cn;

    :cond_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad out-of-bounds coord generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 26

    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v3

    if-lez v3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/J;->c()Lcom/google/android/maps/driveabout/vector/cb;

    move-result-object v15

    new-instance v16, Lcom/google/android/maps/driveabout/vector/cl;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(Lcom/google/android/maps/driveabout/vector/J;)V

    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cb;->f()Z

    move-result v3

    if-eqz v3, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    if-nez v3, :cond_31

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_79

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cl;->a(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    goto :goto_60

    :cond_76
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    :cond_79
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->H:Z

    if-eqz v3, :cond_8a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/cC;->a(Ljava/util/List;)V

    :cond_8a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->m:Z

    if-eqz v3, :cond_136

    sget-object v3, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v14, v3, :cond_98

    sget-object v3, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v14, v3, :cond_136

    :cond_98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_136

    :cond_b3
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cb;->c()Z

    move-result v3

    if-eqz v3, :cond_136

    const/4 v3, 0x1

    move v4, v3

    :goto_bb
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->E()I

    move-result v3

    if-lez v3, :cond_139

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v5, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v3, v5, :cond_139

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->J:Z

    if-eqz v3, :cond_139

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->F()Z

    move-result v3

    if-eqz v3, :cond_139

    const/4 v3, 0x1

    move v13, v3

    :goto_d7
    if-eqz v13, :cond_dc

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->v()V

    :cond_dc
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cb;->d()Z

    move-result v17

    move v12, v3

    :goto_f2
    if-ltz v12, :cond_270

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    aget v3, v3, v12

    if-lez v3, :cond_29d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    aget v3, v3, v12

    sub-int v7, v8, v3

    if-eqz v4, :cond_13c

    move v5, v7

    :goto_107
    if-ge v5, v8, :cond_13c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->f()Z

    move-result v9

    if-nez v9, :cond_132

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v9

    invoke-virtual {v9}, Lt/af;->b()I

    move-result v9

    const/16 v10, 0xe

    if-lt v9, v10, :cond_132

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;Lt/af;)V

    :cond_132
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_107

    :cond_136
    const/4 v3, 0x0

    move v4, v3

    goto :goto_bb

    :cond_139
    const/4 v3, 0x0

    move v13, v3

    goto :goto_d7

    :cond_13c
    if-eqz v13, :cond_1ac

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1e01

    const/16 v9, 0x1e01

    const/16 v10, 0x1e01

    invoke-interface {v3, v5, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x7f

    invoke-interface {v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    move v5, v7

    :goto_155
    if-ge v5, v8, :cond_19f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v10, 0x200

    add-int/lit8 v11, v5, 0x1

    const/16 v18, 0x7f

    move/from16 v0, v18

    invoke-interface {v9, v10, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->i()Lt/V;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    invoke-virtual {v3}, Lt/V;->d()Lt/L;

    move-result-object v10

    invoke-virtual {v3}, Lt/V;->g()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v3}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-interface {v3}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_155

    :cond_19f
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x1e00

    const/16 v9, 0x1e00

    const/16 v10, 0x1e00

    invoke-interface {v3, v5, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    :cond_1ac
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v7, v8}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;II)I

    move-result v5

    const/4 v3, 0x0

    move v10, v3

    move v11, v5

    :goto_1b7
    if-eqz v11, :cond_26c

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_264

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/android/maps/driveabout/vector/cl;->a(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    const/4 v3, 0x1

    shl-int v18, v3, v10

    move v9, v7

    :goto_1dc
    if-ge v9, v8, :cond_261

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v5

    invoke-virtual {v5}, Lt/af;->e()Lt/m;

    move-result-object v19

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    move-object/from16 v20, v0

    sget-object v21, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_20f

    if-eqz v19, :cond_20f

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lt/m;)Lcom/google/android/maps/driveabout/vector/cd;

    move-result-object v5

    if-nez v5, :cond_20f

    move v3, v6

    :goto_20a
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    move v6, v3

    goto :goto_1dc

    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cI;->t:[I

    move-object/from16 v19, v0

    aget v19, v19, v9

    and-int v19, v19, v18

    if-eqz v19, :cond_29a

    if-eqz v13, :cond_230

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v19, 0x202

    add-int/lit8 v20, v9, 0x1

    const/16 v21, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    :cond_230
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->b()Lt/af;

    move-result-object v6

    invoke-virtual {v6}, Lt/af;->i()Lt/V;

    move-result-object v6

    invoke-virtual {v6}, Lt/V;->d()Lt/L;

    move-result-object v6

    if-eqz v5, :cond_24a

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;Lt/L;)V

    :cond_24a
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    if-eqz v5, :cond_25c

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v5, v0, v1}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/J;)V

    :cond_25c
    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    goto :goto_20a

    :cond_261
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    :cond_264
    add-int/lit8 v3, v10, 0x1

    ushr-int/lit8 v5, v11, 0x1

    move v10, v3

    move v11, v5

    goto/16 :goto_1b7

    :cond_26c
    if-eqz v17, :cond_293

    if-eqz v6, :cond_293

    :cond_270
    if-eqz v13, :cond_275

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aT;->w()V

    :cond_275
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cb;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->H:Z

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/cC;->b(Ljava/util/List;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->H:Z

    goto/16 :goto_6

    :cond_293
    move v3, v7

    :goto_294
    add-int/lit8 v5, v12, -0x1

    move v12, v5

    move v8, v3

    goto/16 :goto_f2

    :cond_29a
    move v3, v6

    goto/16 :goto_20a

    :cond_29d
    move v3, v8

    goto :goto_294
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cU;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cU;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    return-void
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;Ljava/util/HashSet;Ljava/util/HashSet;[I)V
    .registers 11

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;II)I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0, p1, v2, p3}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/t;ILjava/util/Collection;)V

    invoke-interface {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/t;Ljava/util/Collection;)V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->h()I

    move-result v0

    if-le v0, v1, :cond_34

    :goto_2a
    move v1, v0

    goto :goto_12

    :cond_2c
    if-eqz p5, :cond_33

    array-length v0, p5

    if-lez v0, :cond_33

    aput v1, p5, v4

    :cond_33
    return-void

    :cond_34
    move v0, v1

    goto :goto_2a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cI;->E:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cC;->b(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 19

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->H:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->D:Lt/L;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;)V

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->G:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_10e

    const/4 v1, 0x1

    :goto_20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->a()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->G:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->w:Lcom/google/android/maps/driveabout/vector/cL;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->c()Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cL;->a(Lt/L;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->w:Lcom/google/android/maps/driveabout/vector/cL;

    invoke-static {v7, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->j:I

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->n:Z

    if-eqz v2, :cond_111

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    if-nez v2, :cond_111

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->J:Z

    if-eqz v2, :cond_111

    const/4 v2, 0x1

    :goto_8c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    if-nez v3, :cond_114

    if-eqz v2, :cond_114

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-ge v3, v4, :cond_114

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_114

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_c5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    if-eqz v1, :cond_c5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v1, v3, :cond_d3

    :cond_c5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->D:Lt/L;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1, v3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/List;Lt/L;I)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    :cond_d3
    :goto_d3
    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    monitor-enter v12

    :try_start_dc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cC;->f()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    if-nez v1, :cond_121

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    if-eqz v1, :cond_121

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    goto :goto_f7

    :catchall_10b
    move-exception v1

    monitor-exit v12
    :try_end_10d
    .catchall {:try_start_dc .. :try_end_10d} :catchall_10b

    throw v1

    :cond_10e
    const/4 v1, 0x0

    goto/16 :goto_20

    :cond_111
    const/4 v2, 0x0

    goto/16 :goto_8c

    :cond_114
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    goto :goto_d3

    :cond_11a
    :try_start_11a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->F:Ljava/util/Set;

    invoke-interface {v11, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cC;->c()I

    move-result v13

    const/4 v1, 0x0

    move v6, v1

    move-object v3, v7

    :goto_12c
    if-gt v6, v9, :cond_1c3

    if-ne v6, v9, :cond_162

    const/4 v1, 0x0

    move-object v5, v1

    :goto_132
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    if-nez v1, :cond_140

    if-lez v6, :cond_171

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->l:Z

    if-nez v1, :cond_171

    :cond_140
    const/4 v1, 0x1

    move v4, v1

    :goto_142
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_146
    :goto_146
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-ne v3, v15, :cond_174

    if-nez v6, :cond_1a3

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_146

    :cond_162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    move-object v5, v1

    goto :goto_132

    :cond_171
    const/4 v1, 0x0

    move v4, v1

    goto :goto_142

    :cond_174
    if-eqz v4, :cond_20c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/cC;->b(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v3

    :goto_17e
    if-eqz v3, :cond_216

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    aget v16, v15, v6

    add-int/lit8 v16, v16, 0x1

    aput v16, v15, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/cI;->f:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_216

    :cond_1a3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->f:I

    if-eq v1, v3, :cond_1c3

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-eq v1, v3, :cond_1c3

    if-eqz v5, :cond_1c3

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_243

    :cond_1c3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_249

    const/4 v1, 0x1

    :goto_1d1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->i:Z

    if-eqz v1, :cond_286

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1df
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1}, Lt/af;->b()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/maps/driveabout/vector/ac;

    shl-int v4, v8, v4

    invoke-direct {v6, v1, v4}, Lcom/google/android/maps/driveabout/vector/ac;-><init>(Lt/af;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1df

    :cond_20c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v3

    goto/16 :goto_17e

    :cond_216
    if-eqz v3, :cond_21e

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aU;->f()Z

    move-result v15

    if-eqz v15, :cond_23a

    :cond_21e
    if-eqz v5, :cond_235

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cI;->D:Lt/L;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v15, v1, v0}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/af;Lt/L;)Lt/af;

    move-result-object v15

    if-eqz v15, :cond_235

    invoke-virtual {v5, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_235
    if-nez v6, :cond_23a

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_23a
    if-nez v3, :cond_23e

    if-nez v4, :cond_146

    :cond_23e
    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_146

    :cond_243
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v3, v5

    goto/16 :goto_12c

    :cond_249
    const/4 v1, 0x0

    goto :goto_1d1

    :cond_24b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->y:Lcom/google/android/maps/driveabout/vector/cn;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cn;->b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_259
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_286

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v1}, Lt/af;->b()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/cI;->r:Ljava/util/ArrayList;

    new-instance v6, Lcom/google/android/maps/driveabout/vector/ac;

    shl-int v4, v8, v4

    invoke-direct {v6, v1, v4}, Lcom/google/android/maps/driveabout/vector/ac;-><init>(Lt/af;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_259

    :cond_286
    if-eqz v2, :cond_2ed

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-ge v1, v2, :cond_2ed

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->E:Lcom/google/android/maps/driveabout/vector/u;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->E:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v1, :cond_2ed

    new-instance v2, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v2

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/List;Lt/L;I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2d3
    :goto_2d3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2ed

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/af;

    invoke-interface {v11, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lt/af;)Lcom/google/android/maps/driveabout/vector/aU;

    goto :goto_2d3

    :cond_2ed
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->n:Z

    if-eqz v1, :cond_32a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    if-nez v1, :cond_32a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->v:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_32a

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-ge v1, v2, :cond_32a

    const/16 v1, 0x8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->D:Lt/L;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v11, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Collection;Lt/L;Ljava/util/Set;I)V

    :cond_32a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cC;->b()Z

    move-result v1

    if-eqz v1, :cond_343

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/cC;->a(Lcom/google/android/maps/driveabout/vector/cz;Lt/L;)V

    :cond_343
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    if-ge v1, v2, :cond_35f

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v11, v2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;Ljava/util/Set;I)I

    :cond_35f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cC;->g()V

    monitor-exit v12
    :try_end_367
    .catchall {:try_start_11a .. :try_end_367} :catchall_10b

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cC;->c()I

    move-result v1

    sub-int/2addr v1, v13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    if-nez v2, :cond_3bd

    if-nez v1, :cond_3bd

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    monitor-enter v2

    :try_start_385
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_38f
    .catchall {:try_start_385 .. :try_end_38f} :catchall_3b8

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_393
    :goto_393
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cK;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3bb

    const/4 v2, 0x1

    :goto_3aa
    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/cK;->a(Z)Z

    move-result v2

    if-nez v2, :cond_393

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_393

    :catchall_3b8
    move-exception v1

    :try_start_3b9
    monitor-exit v2
    :try_end_3ba
    .catchall {:try_start_3b9 .. :try_end_3ba} :catchall_3b8

    throw v1

    :cond_3bb
    const/4 v2, 0x0

    goto :goto_3aa

    :cond_3bd
    const/4 v1, 0x1

    return v1
.end method

.method b(Lt/L;)F
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    if-nez v0, :cond_7

    const/high16 v0, 0x41a8

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->x:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lt/L;)F

    move-result v0

    goto :goto_6
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/Set;
    .registers 3

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cC;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->A:Z

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cK;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cI;->i:Z

    return-void
.end method

.method public c(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->z:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->I:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->J:Z

    return v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/cC;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    return-object v0
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->d:Z

    return v0
.end method

.method public o()Lcom/google/android/maps/driveabout/vector/cB;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->K:Lcom/google/android/maps/driveabout/vector/cB;

    return-object v0
.end method

.method public p()Lp/e;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->q:Lcom/google/android/maps/driveabout/vector/cC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cC;->a()Lp/e;

    move-result-object v0

    return-object v0
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cI;->h:I

    return v0
.end method

.method protected t_()Lcom/google/android/maps/driveabout/vector/cc;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cc;->a:Lcom/google/android/maps/driveabout/vector/cc;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "tileType"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->p:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "isBase"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->J:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mMaxTilesPerView"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mMaxTilesToFetch"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mDrawOrder"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mFetchMissingAncestorTiles"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mAllowMultiZoom"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mPrefetchAncestors"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mTileSize"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mAllowMultiZoom"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mIsContributingLabels"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->I:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    const-string v1, "mMaxTileSize"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cI;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/u;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
