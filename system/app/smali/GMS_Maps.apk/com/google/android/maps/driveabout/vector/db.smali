.class public Lcom/google/android/maps/driveabout/vector/db;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# static fields
.field private static final M:Lcom/google/android/maps/driveabout/vector/da;

.field private static final d:Lt/a;

.field private static final e:Lt/a;


# instance fields
.field private volatile A:Z

.field private final B:Ljava/util/Set;

.field private final C:Lt/f;

.field private final D:Ln/Q;

.field private E:Lcom/google/android/maps/driveabout/vector/l;

.field private F:J

.field private G:J

.field private H:J

.field private I:Z

.field private final J:Z

.field private final K:Z

.field private final L:Lcom/google/android/maps/driveabout/vector/da;

.field private N:I

.field private O:J

.field private P:Ljava/util/Set;

.field private final Q:Lcom/google/android/maps/driveabout/vector/ck;

.field private R:Ljava/lang/ref/WeakReference;

.field protected volatile a:Lcom/google/android/maps/driveabout/vector/cH;

.field protected volatile b:Z

.field protected final c:Lcom/google/android/maps/driveabout/vector/bY;

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

.field private final p:Lcom/google/android/maps/driveabout/vector/dg;

.field private final q:Lw/e;

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;

.field private final t:[I

.field private final u:Ljava/util/ArrayList;

.field private final v:[I

.field private final w:Lcom/google/android/maps/driveabout/vector/de;

.field private x:Lcom/google/android/maps/driveabout/vector/cY;

.field private y:Lcom/google/android/maps/driveabout/vector/cJ;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Lt/a;->a([I)Lt/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/db;->d:Lt/a;

    .line 70
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ba;->a:Lt/a;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/db;->d:Lt/a;

    invoke-static {v0, v1}, Lt/a;->a(Lt/a;Lt/a;)Lt/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/db;->e:Lt/a;

    .line 224
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cZ;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cZ;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V
    .registers 21
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
    .line 714
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 158
    new-instance v1, Lcom/google/android/maps/driveabout/vector/de;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/de;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->w:Lcom/google/android/maps/driveabout/vector/de;

    .line 179
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    .line 187
    new-instance v1, Lt/f;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lt/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->C:Lt/f;

    .line 191
    new-instance v1, Ln/Q;

    invoke-direct {v1}, Ln/Q;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->D:Ln/Q;

    .line 197
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->F:J

    .line 200
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->G:J

    .line 203
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->H:J

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/db;->b:Z

    .line 243
    invoke-static {}, Lcom/google/common/collect/dm;->d()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->P:Ljava/util/Set;

    .line 715
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    .line 716
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    .line 717
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/db;->L:Lcom/google/android/maps/driveabout/vector/da;

    .line 718
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/db;->f:I

    .line 719
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/db;->g:I

    .line 720
    iput p7, p0, Lcom/google/android/maps/driveabout/vector/db;->h:I

    .line 721
    iput p8, p0, Lcom/google/android/maps/driveabout/vector/db;->j:I

    .line 722
    iput p9, p0, Lcom/google/android/maps/driveabout/vector/db;->k:I

    .line 723
    iput-boolean p10, p0, Lcom/google/android/maps/driveabout/vector/db;->o:Z

    .line 724
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->l:Z

    .line 725
    move/from16 v0, p12

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->m:Z

    .line 726
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->n:Z

    .line 727
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->J:Z

    .line 728
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->K:Z

    .line 729
    new-instance v1, Lcom/google/android/maps/driveabout/vector/ck;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/ck;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    .line 730
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v1, v2}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/df;)V

    .line 734
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/db;->J:Z

    if-eqz v1, :cond_ac

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/dg;->h()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 735
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/db;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/bY;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Lcom/google/android/maps/driveabout/vector/bY;

    .line 740
    :goto_83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    .line 741
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    .line 742
    new-array v1, p4, [I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->t:[I

    .line 743
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->u:Ljava/util/ArrayList;

    .line 744
    const/4 v1, 0x0

    :goto_9d
    if-ge v1, p6, :cond_b0

    .line 745
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->u:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    .line 737
    :cond_ac
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Lcom/google/android/maps/driveabout/vector/bY;

    goto :goto_83

    .line 747
    :cond_b0
    add-int/lit8 v1, p6, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    .line 749
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/db;->N:I

    .line 750
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0xfa0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->O:J

    .line 752
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    new-instance v2, Lcom/google/android/maps/driveabout/vector/dc;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/vector/dc;-><init>(Lcom/google/android/maps/driveabout/vector/db;)V

    invoke-virtual {v1, v2}, Lw/e;->a(Lw/j;)V

    .line 777
    return-void
.end method

.method public static a(Landroid/content/res/Resources;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    const v1, 0x64140

    .line 320
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v2

    .line 322
    if-ge v0, v1, :cond_13

    move v0, v1

    .line 325
    :cond_13
    div-int/lit16 v2, p1, 0x100

    int-to-float v2, v2

    .line 326
    mul-float/2addr v2, v2

    .line 327
    mul-int/lit8 v0, v0, 0x18

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;II)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1272
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p2, v1, :cond_27

    move v1, v0

    .line 1273
    :goto_6
    if-ge p3, p4, :cond_21

    .line 1274
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->t:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)I

    move-result v0

    aput v0, v2, p3

    .line 1275
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->t:[I

    aget v0, v0, p3

    or-int/2addr v0, v1

    .line 1273
    add-int/lit8 p3, p3, 0x1

    move v1, v0

    goto :goto_6

    .line 1278
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/maps/driveabout/vector/dg;->a(ILcom/google/android/maps/driveabout/vector/D;)I

    move-result v0

    .line 1280
    :cond_27
    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Ll/q;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x100

    const/4 v5, 0x4

    .line 550
    invoke-static {p1, v7}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v0

    .line 552
    mul-int/lit8 v3, v0, 0x2

    .line 553
    mul-int/lit8 v4, v3, 0x2

    .line 555
    const/4 v0, 0x1

    .line 556
    const/4 v1, 0x0

    .line 557
    new-instance v2, Lw/a;

    invoke-direct {v2, v5, v4, v1, v0}, Lw/a;-><init>(IIZZ)V

    .line 559
    new-instance v1, Lw/e;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {v1, v0, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    .line 561
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bM;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    const v6, 0x25d78

    move-object v8, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bM;-><init>(Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIILandroid/content/Context;Ll/q;)V

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 18
    .parameter

    .prologue
    .line 525
    const/16 v1, 0x100

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v5

    .line 526
    mul-int/lit8 v6, v5, 0x2

    .line 527
    const/4 v11, 0x0

    .line 528
    const/4 v12, 0x0

    .line 529
    const/4 v13, 0x0

    .line 530
    const/4 v14, 0x0

    .line 531
    const/4 v15, 0x0

    .line 532
    const/16 v16, 0x0

    .line 534
    const/4 v1, 0x0

    .line 535
    new-instance v2, Lw/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v6, v1, v12}, Lw/a;-><init>(IIZZ)V

    .line 537
    new-instance v3, Lw/e;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-direct {v3, v1, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    .line 539
    new-instance v1, Lcom/google/android/maps/driveabout/vector/db;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    const/4 v7, 0x0

    const v8, 0x27100

    const/16 v9, 0x100

    const/16 v10, 0x100

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/da;Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    const/16 v1, 0x100

    move-object/from16 v0, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v5

    .line 420
    mul-int/lit8 v6, v5, 0x2

    .line 421
    const/4 v11, 0x0

    .line 422
    const/4 v12, 0x0

    .line 423
    const/4 v13, 0x0

    .line 424
    const/4 v14, 0x0

    .line 425
    const/4 v15, 0x0

    .line 426
    const/16 v16, 0x0

    .line 427
    const/4 v2, 0x0

    .line 429
    const/4 v1, 0x0

    .line 430
    new-instance v4, Lw/a;

    const/4 v3, 0x0

    invoke-direct {v4, v3, v6, v1, v12}, Lw/a;-><init>(IIZZ)V

    .line 435
    new-instance v3, Lw/e;

    new-instance v1, Lj/e;

    sget-object v7, Lcom/google/android/maps/driveabout/vector/db;->d:Lt/a;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2, v7}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/db;->d:Lt/a;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1, v4, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lj/e;Lw/a;Lt/a;)V

    .line 439
    new-instance v1, Lcom/google/android/maps/driveabout/vector/j;

    const/4 v7, 0x0

    const v8, 0x2bf20

    const/16 v9, 0x100

    const/16 v10, 0x100

    move-object/from16 v2, p1

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/j;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 359
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    if-eq p0, v0, :cond_d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->c:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p0, v0, :cond_13

    :cond_d
    move v0, v1

    .line 362
    :goto_e
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;ZZLandroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    return-object v0

    .line 359
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/dg;ZZLandroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    const/16 v1, 0x100

    move-object/from16 v0, p3

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v5

    .line 377
    mul-int/lit8 v6, v5, 0x2

    .line 380
    if-nez p1, :cond_12

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->j:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_5e

    :cond_12
    const/4 v13, 0x1

    .line 383
    :goto_13
    const/4 v11, 0x0

    .line 384
    const/4 v12, 0x0

    .line 387
    if-nez v13, :cond_23

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->o:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_23

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dg;->p:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v0, p0

    if-ne v0, v1, :cond_60

    :cond_23
    const/16 v16, 0x1

    .line 390
    :goto_25
    const/4 v4, 0x0

    .line 393
    if-eqz p1, :cond_63

    sget-object v1, Lcom/google/android/maps/driveabout/vector/db;->e:Lt/a;

    move-object v2, v1

    .line 395
    :goto_2b
    if-eqz v13, :cond_67

    if-eqz v16, :cond_67

    const/4 v1, 0x1

    .line 396
    :goto_30
    new-instance v7, Lw/a;

    const/16 v3, 0x8

    invoke-direct {v7, v3, v6, v1, v12}, Lw/a;-><init>(IIZZ)V

    .line 399
    new-instance v3, Lw/e;

    new-instance v1, Lj/e;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4, v2}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v7, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lj/e;Lw/a;Lt/a;)V

    .line 402
    new-instance v1, Lcom/google/android/maps/driveabout/vector/db;

    new-instance v4, Lcom/google/android/maps/driveabout/vector/cq;

    invoke-direct {v4}, Lcom/google/android/maps/driveabout/vector/cq;-><init>()V

    const/16 v7, 0x8

    const v8, 0x186a0

    const/16 v9, 0x100

    const/16 v10, 0x100

    move-object/from16 v2, p0

    move v14, v13

    move/from16 v15, p2

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    return-object v1

    .line 380
    :cond_5e
    const/4 v13, 0x0

    goto :goto_13

    .line 387
    :cond_60
    const/16 v16, 0x0

    goto :goto_25

    .line 393
    :cond_63
    sget-object v1, Lt/a;->a:Lt/a;

    move-object v2, v1

    goto :goto_2b

    .line 395
    :cond_67
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public static a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/dg;)Lcom/google/android/maps/driveabout/vector/dy;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x100

    const/4 v5, 0x0

    .line 503
    invoke-static {p0, v7}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v3

    .line 504
    mul-int/lit8 v4, v3, 0x2

    .line 505
    const/4 v8, 0x1

    .line 512
    new-instance v0, Lw/a;

    invoke-direct {v0, v5, v4, v5, v8}, Lw/a;-><init>(IIZZ)V

    .line 515
    new-instance v1, Lw/e;

    invoke-direct {v1, p1, v0}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    .line 517
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dy;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    const v6, 0x249f0

    move v9, v5

    move v10, v5

    move v11, v5

    move v12, v5

    invoke-direct/range {v0 .. v12}, Lcom/google/android/maps/driveabout/vector/dy;-><init>(Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIZZZZZ)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/db;)Lw/e;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;Ln/am;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1323
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 1324
    const/high16 v1, 0x4000

    invoke-virtual {p4}, Ln/am;->b()I

    move-result v2

    shr-int/2addr v1, v2

    .line 1325
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1326
    invoke-virtual {p4}, Ln/am;->g()Ln/Q;

    move-result-object v2

    int-to-float v1, v1

    invoke-static {p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 1330
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1331
    invoke-static {p3}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/D;)[I

    move-result-object v1

    .line 1332
    aget v2, v1, v6

    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v4, 0x2

    aget v4, v1, v4

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1333
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 1334
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1335
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;Ljava/util/Collection;ILjava/util/Set;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    invoke-static {}, Lj/a;->a()Lj/a;

    move-result-object v4

    monitor-enter v4

    .line 857
    :try_start_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->c()V

    .line 859
    const/4 v0, 0x0

    move v3, v0

    :goto_c
    if-gt v3, p3, :cond_6a

    .line 861
    if-ne v3, p3, :cond_71

    .line 862
    const/4 v0, 0x0

    move-object v2, v0

    .line 868
    :goto_12
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16
    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 871
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v1, v0}, Lw/e;->a(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v6

    .line 872
    if-eqz v6, :cond_7e

    .line 873
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->R:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v6, p1, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 875
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->P:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 876
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Z)V

    .line 878
    :cond_46
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    aget v7, v1, v3

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v3

    .line 879
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/db;->f:I

    if-ne v1, v7, :cond_7e

    .line 899
    :cond_58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/db;->f:I

    if-eq v0, v1, :cond_6a

    if-eqz v2, :cond_6a

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_9f

    .line 908
    :cond_6a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->d()V

    .line 909
    monitor-exit v4

    .line 910
    return-void

    .line 864
    :cond_71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 865
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move-object v2, v0

    goto :goto_12

    .line 884
    :cond_7e
    if-eqz v6, :cond_86

    invoke-interface {v6}, Lcom/google/android/maps/driveabout/vector/aV;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 886
    :cond_86
    if-eqz v2, :cond_95

    .line 887
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/db;->D:Ln/Q;

    invoke-interface {v1, v0, v6}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/am;Ln/Q;)Ln/am;

    move-result-object v1

    .line 888
    if-eqz v1, :cond_95

    .line 889
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_95
    if-nez v3, :cond_16

    .line 893
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 909
    :catchall_9c
    move-exception v0

    monitor-exit v4
    :try_end_9e
    .catchall {:try_start_5 .. :try_end_9e} :catchall_9c

    throw v0

    .line 859
    :cond_9f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object p2, v2

    goto/16 :goto_c
.end method

.method public static b(Landroid/content/res/Resources;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 339
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    .line 340
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

    .line 342
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

    .line 345
    mul-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 449
    const/16 v1, 0x100

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->b(Landroid/content/res/Resources;I)I

    move-result v5

    .line 450
    mul-int/lit8 v6, v5, 0x2

    .line 451
    const/16 v10, 0x180

    .line 452
    const/4 v11, 0x1

    .line 453
    const/4 v12, 0x1

    .line 454
    const/4 v13, 0x0

    .line 455
    const/4 v14, 0x0

    .line 456
    const/4 v15, 0x0

    .line 457
    const/16 v16, 0x0

    .line 459
    const/4 v1, 0x0

    .line 460
    new-instance v2, Lw/a;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v6, v1, v12}, Lw/a;-><init>(IIZZ)V

    .line 463
    new-instance v3, Lw/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    .line 465
    new-instance v1, Lcom/google/android/maps/driveabout/vector/db;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    const/4 v7, 0x4

    const v8, 0xc350

    const/16 v9, 0x100

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method private b(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1428
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1429
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    iget v3, v3, Lcom/google/android/maps/driveabout/vector/dg;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1430
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

    .line 1431
    invoke-static {v0}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/db;)Lt/f;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->C:Lt/f;

    return-object v0
.end method

.method public static c(Lcom/google/android/maps/driveabout/vector/dg;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/db;
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 476
    const/16 v10, 0x14c

    .line 477
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/google/android/maps/driveabout/vector/db;->b(Landroid/content/res/Resources;I)I

    move-result v5

    .line 478
    mul-int/lit8 v6, v5, 0x2

    .line 479
    const/4 v11, 0x0

    .line 480
    const/4 v12, 0x1

    .line 481
    const/4 v13, 0x0

    .line 482
    const/4 v14, 0x0

    .line 483
    const/4 v15, 0x0

    .line 484
    const/16 v16, 0x0

    .line 486
    const/4 v1, 0x0

    .line 487
    new-instance v2, Lw/a;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v6, v1, v12}, Lw/a;-><init>(IIZZ)V

    .line 490
    new-instance v3, Lw/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V

    .line 492
    new-instance v1, Lcom/google/android/maps/driveabout/vector/db;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/db;->M:Lcom/google/android/maps/driveabout/vector/da;

    const/4 v7, 0x2

    const v8, 0xc350

    const/16 v9, 0x100

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v16}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/e;Lcom/google/android/maps/driveabout/vector/da;IIIIIIZZZZZZ)V

    return-object v1
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 1
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/db;->e()V

    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 1414
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/db;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/db;->N:I

    .line 1415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/db;->O:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 1416
    const/16 v0, 0x6e

    const-string v1, "l"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->N:I

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/db;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/db;->N:I

    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/db;->O:J

    .line 1421
    :cond_29
    return-void
.end method

.method private r()Z
    .registers 4

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1457
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v2}, Lw/e;->k()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/googlenav/common/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1458
    const/4 v0, 0x1

    .line 1461
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public a(Ln/aK;Lcom/google/android/maps/driveabout/vector/ct;Ljava/util/Set;)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1365
    const/4 v0, 0x0

    .line 1369
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

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

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1370
    if-eqz v0, :cond_3d

    if-eqz p1, :cond_26

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v3

    invoke-virtual {v3}, Ln/am;->h()Ln/aa;

    move-result-object v3

    invoke-virtual {p1, v3}, Ln/aK;->b(Ln/ab;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1375
    :cond_26
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-interface {v0, v3}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/bY;)V

    .line 1376
    invoke-interface {v0, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/ct;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1384
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v3

    invoke-virtual {v3}, Ln/am;->b()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1387
    :cond_3d
    instance-of v3, v0, Lcom/google/android/maps/driveabout/vector/ba;

    if-eqz v3, :cond_8

    .line 1388
    check-cast v0, Lcom/google/android/maps/driveabout/vector/ba;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/vector/ba;->a(Ljava/util/Set;)Z

    goto :goto_8

    .line 1392
    :cond_47
    return v1
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 832
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    .line 833
    return-void

    .line 832
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 578
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->R:Ljava/lang/ref/WeakReference;

    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 580
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/cH;

    .line 581
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    if-nez v0, :cond_41

    .line 585
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->L:Lcom/google/android/maps/driveabout/vector/da;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->k:I

    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/db;->o:Z

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/da;->a(Lcom/google/android/maps/driveabout/vector/dg;IZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cY;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/cY;)V

    .line 587
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->L:Lcom/google/android/maps/driveabout/vector/da;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->o:Z

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/da;->a(Lcom/google/android/maps/driveabout/vector/dg;ZLcom/google/android/maps/driveabout/vector/df;)Lcom/google/android/maps/driveabout/vector/cJ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->y:Lcom/google/android/maps/driveabout/vector/cJ;

    .line 589
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->y:Lcom/google/android/maps/driveabout/vector/cJ;

    if-nez v0, :cond_41

    .line 592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cJ;

    if-eqz v0, :cond_42

    .line 593
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cJ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->y:Lcom/google/android/maps/driveabout/vector/cJ;

    .line 600
    :cond_41
    return-void

    .line 596
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad out-of-bounds coord generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 26
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v3

    if-lez v3, :cond_7

    .line 1264
    :cond_6
    :goto_6
    return-void

    .line 1075
    :cond_7
    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v14

    .line 1076
    invoke-interface/range {p3 .. p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v15

    .line 1077
    new-instance v16, Lcom/google/android/maps/driveabout/vector/cG;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cG;-><init>(Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1079
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cv;->f()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 1083
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    if-nez v3, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/db;->r()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1084
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 1088
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    if-eqz v3, :cond_44

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    if-nez v3, :cond_44

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 1094
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8c

    .line 1095
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 1096
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cG;->a(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1099
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    goto :goto_73

    .line 1101
    :cond_89
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 1106
    :cond_8c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->I:Z

    if-eqz v3, :cond_9d

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lw/e;->a(Ljava/util/List;)V

    .line 1114
    :cond_9d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->m:Z

    if-eqz v3, :cond_14b

    sget-object v3, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v14, v3, :cond_ab

    sget-object v3, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    if-ne v14, v3, :cond_14b

    :cond_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14b

    :cond_c6
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cv;->c()Z

    move-result v3

    if-eqz v3, :cond_14b

    const/4 v3, 0x1

    move v5, v3

    .line 1119
    :goto_ce
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->F()I

    move-result v3

    if-lez v3, :cond_14e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/dg;->h()Z

    move-result v3

    if-eqz v3, :cond_14e

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->K:Z

    if-eqz v3, :cond_14e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->G()Z

    move-result v3

    if-eqz v3, :cond_14e

    const/4 v3, 0x1

    move v13, v3

    .line 1123
    :goto_ec
    if-eqz v13, :cond_f1

    .line 1124
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->v()V

    .line 1130
    :cond_f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1133
    const/4 v6, 0x0

    .line 1142
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cv;->d()Z

    move-result v17

    move v12, v3

    .line 1144
    :goto_107
    if-ltz v12, :cond_293

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    aget v3, v3, v12

    if-lez v3, :cond_2c0

    .line 1146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    aget v3, v3, v12

    sub-int v7, v8, v3

    .line 1149
    if-eqz v5, :cond_151

    move v4, v7

    .line 1150
    :goto_11c
    if-ge v4, v8, :cond_151

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1152
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->f()Z

    move-result v9

    if-nez v9, :cond_147

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v9

    invoke-virtual {v9}, Ln/am;->b()I

    move-result v9

    const/16 v10, 0xe

    if-lt v9, v10, :cond_147

    .line 1154
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;Ln/am;)V

    .line 1150
    :cond_147
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_11c

    .line 1114
    :cond_14b
    const/4 v3, 0x0

    move v5, v3

    goto :goto_ce

    .line 1119
    :cond_14e
    const/4 v3, 0x0

    move v13, v3

    goto :goto_ec

    .line 1165
    :cond_151
    if-eqz v13, :cond_1bf

    .line 1169
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x1e01

    const/16 v9, 0x1e01

    const/16 v10, 0x1e01

    invoke-interface {v3, v4, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 1170
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x7f

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    move v4, v7

    .line 1171
    :goto_16a
    if-ge v4, v8, :cond_1b2

    .line 1172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1174
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v10, 0x200

    add-int/lit8 v11, v4, 0x1

    const/16 v18, 0x7f

    move/from16 v0, v18

    invoke-interface {v9, v10, v11, v0}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 1175
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 1176
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v3

    invoke-virtual {v3}, Ln/am;->h()Ln/aa;

    move-result-object v3

    .line 1177
    invoke-virtual {v3}, Ln/aa;->d()Ln/Q;

    move-result-object v9

    invoke-virtual {v3}, Ln/aa;->g()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v9, v3}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 1179
    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/vector/aW;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 1180
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v3

    invoke-interface {v3}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1171
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_16a

    .line 1182
    :cond_1b2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v4, 0x1e00

    const/16 v9, 0x1e00

    const/16 v10, 0x1e00

    invoke-interface {v3, v4, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 1186
    :cond_1bf
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v7, v8}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;II)I

    move-result v4

    .line 1189
    const/4 v3, 0x0

    move v10, v3

    move v11, v4

    :goto_1ca
    if-eqz v11, :cond_28f

    .line 1190
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_287

    .line 1191
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 1192
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/android/maps/driveabout/vector/cG;->a(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1195
    const/4 v3, 0x1

    shl-int v18, v3, v10

    move v9, v7

    .line 1196
    :goto_1ef
    if-ge v9, v8, :cond_284

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1198
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v4

    invoke-virtual {v4}, Ln/am;->j()Ln/av;

    move-result-object v19

    .line 1199
    const/4 v4, 0x0

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v20, v0

    sget-object v21, Lcom/google/android/maps/driveabout/vector/dg;->n:Lcom/google/android/maps/driveabout/vector/dg;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_232

    if-eqz v19, :cond_232

    .line 1207
    sget-object v4, Ln/aq;->c:Ln/aq;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ln/av;->a(Ln/aq;)Ln/ao;

    move-result-object v4

    check-cast v4, Ln/C;

    .line 1209
    if-nez v4, :cond_22d

    const/4 v4, 0x0

    .line 1210
    :goto_221
    invoke-virtual {v15, v4}, Lcom/google/android/maps/driveabout/vector/cv;->a(Ln/m;)Lcom/google/android/maps/driveabout/vector/cx;

    move-result-object v4

    .line 1211
    if-nez v4, :cond_232

    move v3, v6

    .line 1196
    :goto_228
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v6, v3

    goto :goto_1ef

    .line 1209
    :cond_22d
    invoke-virtual {v4}, Ln/C;->b()Ln/p;

    move-result-object v4

    goto :goto_221

    .line 1215
    :cond_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/db;->t:[I

    move-object/from16 v19, v0

    aget v19, v19, v9

    and-int v19, v19, v18

    if-eqz v19, :cond_2bd

    .line 1216
    if-eqz v13, :cond_253

    .line 1217
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v19, 0x202

    add-int/lit8 v20, v9, 0x1

    const/16 v21, 0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v6, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 1221
    :cond_253
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 1222
    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v6

    invoke-virtual {v6}, Ln/am;->h()Ln/aa;

    move-result-object v6

    invoke-virtual {v6}, Ln/aa;->d()Ln/Q;

    move-result-object v6

    .line 1223
    if-eqz v4, :cond_26d

    .line 1224
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v4, v0, v1, v2, v6}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V

    .line 1230
    :cond_26d
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1231
    if-eqz v4, :cond_27f

    .line 1232
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v4, v0, v1}, Lcom/google/android/maps/driveabout/vector/cx;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1234
    :cond_27f
    const/4 v3, 0x1

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    goto :goto_228

    .line 1238
    :cond_284
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 1189
    :cond_287
    add-int/lit8 v3, v10, 0x1

    ushr-int/lit8 v4, v11, 0x1

    move v10, v3

    move v11, v4

    goto/16 :goto_1ca

    .line 1247
    :cond_28f
    if-eqz v17, :cond_2b6

    if-eqz v6, :cond_2b6

    .line 1253
    :cond_293
    if-eqz v13, :cond_298

    .line 1254
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/aU;->w()V

    .line 1257
    :cond_298
    invoke-virtual {v15}, Lcom/google/android/maps/driveabout/vector/cv;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1259
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->I:Z

    if-eqz v3, :cond_6

    .line 1260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lw/e;->b(Ljava/util/List;)V

    .line 1261
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/google/android/maps/driveabout/vector/db;->I:Z

    goto/16 :goto_6

    :cond_2b6
    move v3, v7

    .line 1144
    :goto_2b7
    add-int/lit8 v4, v12, -0x1

    move v12, v4

    move v8, v3

    goto/16 :goto_107

    :cond_2bd
    move v3, v6

    goto/16 :goto_228

    :cond_2c0
    move v3, v8

    goto :goto_2b7
.end method

.method protected a(Lcom/google/android/maps/driveabout/vector/cY;)V
    .registers 4
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    .line 569
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/db;->G:J

    .line 570
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 3
    .parameter

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 657
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;Ljava/util/HashSet;Ljava/util/HashSet;[I)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1298
    .line 1299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, v4}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;II)I

    .line 1300
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1301
    invoke-interface {v0, p1, v2, p3}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/k;ILjava/util/Collection;)V

    .line 1302
    invoke-interface {v0, p1, p4}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/k;Ljava/util/Collection;)V

    .line 1303
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->h()I

    move-result v0

    .line 1304
    if-le v0, v1, :cond_34

    :goto_2a
    move v1, v0

    .line 1307
    goto :goto_12

    .line 1308
    :cond_2c
    if-eqz p5, :cond_33

    array-length v0, p5

    if-lez v0, :cond_33

    .line 1309
    aput v1, p5, v4

    .line 1311
    :cond_33
    return-void

    :cond_34
    move v0, v1

    goto :goto_2a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/l;)V
    .registers 2
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/db;->E:Lcom/google/android/maps/driveabout/vector/l;

    .line 673
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1407
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0, p1}, Lw/e;->b(Z)V

    .line 625
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 626
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->b:Z

    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->I:Z

    .line 924
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->D:Ln/Q;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;)V

    .line 926
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cY;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v7

    .line 929
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    .line 930
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->w:Lcom/google/android/maps/driveabout/vector/de;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->c()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/de;->a(Ln/Q;)V

    .line 931
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->w:Lcom/google/android/maps/driveabout/vector/de;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 934
    :cond_26
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/db;->j:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v8, v0

    .line 937
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->P:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 939
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 940
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 941
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 943
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 944
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v10

    .line 947
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->h()Z

    move-result v0

    .line 949
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    if-eqz v1, :cond_dc

    .line 950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->E:Lcom/google/android/maps/driveabout/vector/l;

    .line 951
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->E:Lcom/google/android/maps/driveabout/vector/l;

    .line 953
    if-eqz v0, :cond_d6

    .line 954
    new-instance v3, Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    .line 956
    const/4 v4, 0x0

    .line 957
    const/4 v5, 0x0

    .line 959
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    new-instance v2, Ln/Q;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v6

    invoke-direct {v2, v6}, Ln/Q;-><init>(Ln/Q;)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v6, v3}, Lcom/google/android/maps/driveabout/vector/cY;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v3

    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/cY;Ln/Q;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 989
    :cond_8c
    :goto_8c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->b()I

    move-result v1

    .line 1010
    invoke-direct {p0, p1, v7, v9, v10}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Ljava/util/Collection;ILjava/util/Set;)V

    .line 1014
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->v:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_134

    const/4 v0, 0x1

    :goto_a1
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->b:Z

    .line 1016
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->i:Z

    if-eqz v0, :cond_16c

    .line 1018
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ab
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_137

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 1019
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1020
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aa;

    shl-int v3, v8, v3

    invoke-direct {v5, v0, v3}, Lcom/google/android/maps/driveabout/vector/aa;-><init>(Ln/am;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 967
    :cond_d6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->e()V

    goto :goto_8c

    .line 969
    :cond_dc
    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->F:J

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_104

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->G:J

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/cY;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_104

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/db;->H:J

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ck;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_104

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    if-nez v1, :cond_104

    if-eqz v0, :cond_8c

    .line 975
    :cond_104
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/db;->b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;

    move-result-object v4

    .line 976
    const/4 v5, 0x0

    .line 977
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    new-instance v2, Ln/Q;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v3

    invoke-direct {v2, v3}, Ln/Q;-><init>(Ln/Q;)V

    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    move-object v3, v7

    invoke-virtual/range {v0 .. v6}, Lw/e;->a(Lcom/google/android/maps/driveabout/vector/cY;Ln/Q;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 984
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/db;->F:J

    .line 985
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/cY;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/db;->G:J

    .line 986
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ck;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/db;->H:J

    goto/16 :goto_8c

    .line 1014
    :cond_134
    const/4 v0, 0x0

    goto/16 :goto_a1

    .line 1024
    :cond_137
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->y:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v0

    .line 1026
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 1027
    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0}, Ln/am;->b()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1028
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/db;->r:Ljava/util/ArrayList;

    new-instance v5, Lcom/google/android/maps/driveabout/vector/aa;

    shl-int v3, v8, v3

    invoke-direct {v5, v0, v3}, Lcom/google/android/maps/driveabout/vector/aa;-><init>(Ln/am;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_141

    .line 1035
    :cond_16c
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->z:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 1037
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->b()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1038
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    if-nez v1, :cond_1b2

    if-nez v0, :cond_1b2

    .line 1047
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    monitor-enter v1

    .line 1048
    :try_start_180
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1049
    monitor-exit v1
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_1ad

    .line 1050
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18c
    :goto_18c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dd;

    .line 1051
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b0

    const/4 v1, 0x1

    :goto_1a1
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dd;->a(Z)Z

    move-result v1

    if-nez v1, :cond_18c

    .line 1052
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_18c

    .line 1049
    :catchall_1ad
    move-exception v0

    :try_start_1ae
    monitor-exit v1
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_1ad

    throw v0

    .line 1051
    :cond_1b0
    const/4 v1, 0x0

    goto :goto_1a1

    .line 1058
    :cond_1b2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1059
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/aV;->a(Z)V

    goto :goto_1b8

    .line 1061
    :cond_1c9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->P:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1062
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ln/ao;)Z
    .registers 3
    .parameter

    .prologue
    .line 810
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->Q:Lcom/google/android/maps/driveabout/vector/ck;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/ck;->a(Ln/ao;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 604
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->R:Ljava/lang/ref/WeakReference;

    .line 605
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/cH;

    .line 609
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->i()V

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 615
    return-void
.end method

.method b(Ln/Q;)F
    .registers 3
    .parameter

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    if-nez v0, :cond_7

    .line 796
    const/high16 v0, 0x41a8

    .line 798
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->x:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/Q;)F

    move-result v0

    goto :goto_6
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 842
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->g()V

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->A:Z

    .line 637
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dd;)V
    .registers 3
    .parameter

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->B:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 788
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/db;->i:Z

    .line 645
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw/e;->a(J)V

    .line 574
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->J:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->K:Z

    return v0
.end method

.method public k()Lw/e;
    .registers 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    return-object v0
.end method

.method public m()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 1287
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->b:Z

    return v0
.end method

.method public p()Lcom/google/android/maps/driveabout/vector/da;
    .registers 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->L:Lcom/google/android/maps/driveabout/vector/da;

    return-object v0
.end method

.method public q()Lj/e;
    .registers 2

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/db;->q:Lw/e;

    invoke-virtual {v0}, Lw/e;->f()Lj/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1436
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "tileType"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/db;->p:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "isBase"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->K:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mMaxTilesPerView"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mMaxTilesToFetch"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mDrawOrder"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mFetchMissingAncestorTiles"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mAllowMultiZoom"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mPrefetchAncestors"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->n:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mTileSize"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mAllowMultiZoom"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->o:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mIsContributingLabels"

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/db;->J:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "mMaxTileSize"

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/db;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 819
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/db;->h:I

    return v0
.end method

.method protected v_()Lcom/google/android/maps/driveabout/vector/cw;
    .registers 2

    .prologue
    .line 827
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cw;->a:Lcom/google/android/maps/driveabout/vector/cw;

    return-object v0
.end method
